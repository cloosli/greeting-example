library app_bootstrap;

import 'package:polymer/polymer.dart';

import 'package:core_elements/core_meta.dart' as i0;
import 'package:polymer/src/build/log_injector.dart';
import 'package:core_elements/core_iconset.dart' as i1;
import 'package:polymer/src/build/log_injector.dart';
import 'package:core_elements/core_icon.dart' as i2;
import 'package:polymer/src/build/log_injector.dart';
import 'package:paper_elements/paper_ripple.dart' as i3;
import 'package:polymer/src/build/log_injector.dart';
import 'package:paper_elements/paper_shadow.dart' as i4;
import 'package:polymer/src/build/log_injector.dart';
import 'package:paper_elements/paper_focusable.dart' as i5;
import 'package:polymer/src/build/log_injector.dart';
import 'package:paper_elements/paper_button_base.dart' as i6;
import 'package:polymer/src/build/log_injector.dart';
import 'package:paper_elements/paper_button.dart' as i7;
import 'package:polymer/src/build/log_injector.dart';
import 'package:dart_client/main_app.dart' as i8;
import 'package:polymer/src/build/log_injector.dart';
import 'package:core_elements/core_iconset_svg.dart' as i9;
import 'package:polymer/src/build/log_injector.dart';
import 'package:core_elements/core_input.dart' as i10;
import 'package:polymer/src/build/log_injector.dart';
import 'package:core_elements/core_style.dart' as i11;
import 'package:polymer/src/build/log_injector.dart';
import 'package:paper_elements/paper_input.dart' as i12;
import 'package:polymer/src/build/log_injector.dart';
import 'package:dart_client/create_greeting.dart' as i13;
import 'package:polymer/src/build/log_injector.dart';
import 'index.html.0.dart' as i14;
import 'package:polymer/src/build/log_injector.dart';
import 'package:smoke/smoke.dart' show Declaration, PROPERTY, METHOD;
import 'package:smoke/static.dart' show useGeneratedCode, StaticConfiguration;
import 'package:dart_client/main_app.dart' as smoke_0;
import 'package:polymer/polymer.dart' as smoke_1;
import 'package:observe/src/metadata.dart' as smoke_2;
import 'package:dart_client/create_greeting.dart' as smoke_3;
abstract class _M0 {} // PolymerElement & ChangeNotifier

void main() {
  useGeneratedCode(new StaticConfiguration(
      checkedMode: false,
      getters: {
        #author: (o) => o.author,
        #autofocus: (o) => o.autofocus,
        #blurAction: (o) => o.blurAction,
        #content: (o) => o.content,
        #contextMenuAction: (o) => o.contextMenuAction,
        #create: (o) => o.create,
        #cursorAnimated: (o) => o.cursorAnimated,
        #date: (o) => o.date,
        #disabled: (o) => o.disabled,
        #downAction: (o) => o.downAction,
        #error: (o) => o.error,
        #floatingLabel: (o) => o.floatingLabel,
        #focusAction: (o) => o.focusAction,
        #focused: (o) => o.focused,
        #greeting: (o) => o.greeting,
        #greetings: (o) => o.greetings,
        #inputBlurAction: (o) => o.inputBlurAction,
        #inputChangeAction: (o) => o.inputChangeAction,
        #inputFocusAction: (o) => o.inputFocusAction,
        #inputValue: (o) => o.inputValue,
        #invalid: (o) => o.invalid,
        #keypressAction: (o) => o.keypressAction,
        #label: (o) => o.label,
        #labelAnimated: (o) => o.labelAnimated,
        #load: (o) => o.load,
        #max: (o) => o.max,
        #maxlength: (o) => o.maxlength,
        #min: (o) => o.min,
        #multiline: (o) => o.multiline,
        #pattern: (o) => o.pattern,
        #placeholder: (o) => o.placeholder,
        #raised: (o) => o.raised,
        #raisedButton: (o) => o.raisedButton,
        #readonly: (o) => o.readonly,
        #required: (o) => o.required,
        #rows: (o) => o.rows,
        #step: (o) => o.step,
        #transitionEndAction: (o) => o.transitionEndAction,
        #type: (o) => o.type,
        #underlineAnimated: (o) => o.underlineAnimated,
        #upAction: (o) => o.upAction,
        #valid: (o) => o.valid,
        #validationMessage: (o) => o.validationMessage,
        #validity: (o) => o.validity,
        #z: (o) => o.z,
      },
      setters: {
        #author: (o, v) { o.author = v; },
        #content: (o, v) { o.content = v; },
        #greetings: (o, v) { o.greetings = v; },
        #inputValue: (o, v) { o.inputValue = v; },
        #z: (o, v) { o.z = v; },
      },
      parents: {
        smoke_3.CreateGreeting: _M0,
        smoke_0.MainApp: _M0,
        _M0: smoke_1.PolymerElement,
      },
      declarations: {
        smoke_3.CreateGreeting: {
          #author: const Declaration(#author, String, kind: PROPERTY, annotations: const [smoke_2.reflectable, smoke_2.observable]),
          #content: const Declaration(#content, String, kind: PROPERTY, annotations: const [smoke_2.reflectable, smoke_2.observable]),
        },
        smoke_0.MainApp: {
          #greetings: const Declaration(#greetings, List, kind: PROPERTY, annotations: const [smoke_2.reflectable, smoke_2.observable]),
        },
      },
      names: {
        #author: r'author',
        #autofocus: r'autofocus',
        #blurAction: r'blurAction',
        #content: r'content',
        #contextMenuAction: r'contextMenuAction',
        #create: r'create',
        #cursorAnimated: r'cursorAnimated',
        #date: r'date',
        #disabled: r'disabled',
        #downAction: r'downAction',
        #error: r'error',
        #floatingLabel: r'floatingLabel',
        #focusAction: r'focusAction',
        #focused: r'focused',
        #greeting: r'greeting',
        #greetings: r'greetings',
        #inputBlurAction: r'inputBlurAction',
        #inputChangeAction: r'inputChangeAction',
        #inputFocusAction: r'inputFocusAction',
        #inputValue: r'inputValue',
        #invalid: r'invalid',
        #keypressAction: r'keypressAction',
        #label: r'label',
        #labelAnimated: r'labelAnimated',
        #load: r'load',
        #max: r'max',
        #maxlength: r'maxlength',
        #min: r'min',
        #multiline: r'multiline',
        #pattern: r'pattern',
        #placeholder: r'placeholder',
        #raised: r'raised',
        #raisedButton: r'raisedButton',
        #readonly: r'readonly',
        #required: r'required',
        #rows: r'rows',
        #step: r'step',
        #transitionEndAction: r'transitionEndAction',
        #type: r'type',
        #underlineAnimated: r'underlineAnimated',
        #upAction: r'upAction',
        #valid: r'valid',
        #validationMessage: r'validationMessage',
        #validity: r'validity',
        #z: r'z',
      }));
  new LogInjector().injectLogsFromUrl('index.html._buildLogs');
  configureForDeployment([
      i0.upgradeCoreMeta,
      i1.upgradeCoreIconset,
      i2.upgradeCoreIcon,
      i3.upgradePaperRipple,
      i4.upgradePaperShadow,
      i5.upgradePaperFocusable,
      i6.upgradePaperButtonBase,
      i7.upgradePaperButton,
      () => Polymer.register('main-app', i8.MainApp),
      i9.upgradeCoreIconsetSvg,
      i10.upgradeCoreInput,
      i11.upgradeCoreStyle,
      i12.upgradePaperInput,
      () => Polymer.register('create-greeting', i13.CreateGreeting),
    ]);
  i14.main();
}
