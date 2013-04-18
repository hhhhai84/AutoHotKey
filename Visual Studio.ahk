SetTitleMatchMode 2 ; title can contain the search text

;SetTimer, WatchActiveWindow, 300
;return

;WatchActiveWindow:
;SetTitleMatchMode 2 ; title can contain the search text
;IfWinActive, Microsoft Visual Studio
;    Suspend Off
;else
;    Suspend On
;return

#IfWinActive Microsoft Visual Studio

; Temporary shortcut for code refactoring
::/dc::
SendInput var Field = PropertySheet.AddComboBoxField(TermDefinition, ^v);{ENTER}
SendInput Field.Constrain(Record => {!}Record.Deleted);{ENTER}
SendInput return Field;

; Create a projector variant of a Helpers Add*Column using an entity in the clipboard
::/pac::
SendInput public static Exp.Data.GridColumnControl<^v> Add_NAME_HERE_Column<TContext>(this Exp.Data.GridTemplateControl<TContext> Template, Forge.Term.DefinitionContract TermDefinition, Func<TContext, ^v> Projector){Enter}
SendInput {RAW}  {
SendInput {ENTER}
SendInput return Template.AddCustomColumn<^v>(TermDefinition, Projector, Field => Field.TextBlock.AddText(Field.Value.FormatTitle()));{ENTER}
SendInput {RAW}  }
SendInput {ENTER}
SendInput public static Exp.Data.GridColumnControl<^v> Add_NAME_HERE_Column<TContext>(this Exp.Data.GridTemplateControl<TContext> Template, Forge.Term.DefinitionContract TermDefinition, Func<TContext, IEnumerable<^v>> Projector){ENTER}
SendInput {RAW}  {
SendInput {ENTER}
SendInput return Template.AddCustomColumn<^v>(TermDefinition, Projector, Field => Field.TextBlock.AddText(Field.Value.FormatTitle()));{ENTER}
SendInput {RAW}  }
return

; Creat an empty anonymous delegate for c#
::/+=::
SendInput {RAW} += () =>
SendInput {ENTER}{BACKSPACE}{{}{ENTER}{}};
return