package main

import (
	"net/http"
	"time"

	"appengine/datastore"
	"github.com/crhym3/go-endpoints/endpoints"
)

type Greeting struct {
	Key     *datastore.Key `json:"id" datastore:"-"`
	Author  string         `json:"author"`
	Content string         `json:"content" datastore:",noindex" endpoint:"req"`
	Date    time.Time      `json:"date"`
}

type GreetingsList struct {
	Items []*Greeting `json:"items"`
}

type GreetingsListReq struct {
	Limit int `json:"limit" endpoint:"d=10"`
}

type GreetingService struct {
}

func (gs *GreetingService) List(r *http.Request, req *GreetingsListReq, resp *GreetingsList) error {

	if req.Limit <= 0 {
		req.Limit = 10
	}

	c := endpoints.NewContext(r)
	q := datastore.NewQuery("Greeting").Order("-Date").Limit(req.Limit)
	greets := make([]*Greeting, 0, req.Limit)
	keys, err := q.GetAll(c, &greets)
	if err != nil {
		return err
	}

	for i, k := range keys {
		greets[i].Key = k
	}
	resp.Items = greets

	return nil
}

type GreetingReq struct {
	Author  string
	Content string
}

func (gs *GreetingService) Create(r *http.Request, req *GreetingReq, resp *Greeting) error {
	c := endpoints.NewContext(r)

	resp.Author = req.Author
	resp.Content = req.Content
	resp.Date = time.Now()

	key, err := datastore.Put(c, datastore.NewIncompleteKey(c, "Greeting", nil), resp)
	if err != nil {
		return err
	}

	resp.Key = key

	return nil
}

func init() {
	greetService := &GreetingService{}

	api, err := endpoints.RegisterService(greetService, "greeting", "v1", "Greetings API", true)
	if err != nil {
		panic(err.Error())
	}

	info := api.MethodByName("List").Info()
	info.Name, info.HTTPMethod, info.Path, info.Desc = "greets.list", "GET", "greetings", "List most recent greetings."

	info = api.MethodByName("Create").Info()
	info.Name, info.HTTPMethod, info.Path, info.Desc = "greets.create", "POST", "greetings", "List most recent greetings."

	endpoints.HandleHTTP()
}
