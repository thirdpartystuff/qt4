
if(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    add_definitions(
        -Wno-logical-op-parentheses
        -Wno-dangling-else
        -Wno-parentheses-equality
        )
endif()

set(gen)
moc("${ROOT}/tools/designer/src/components/buddyeditor/buddyeditor.h")
moc("${ROOT}/tools/designer/src/components/buddyeditor/buddyeditor_plugin.h")
moc("${ROOT}/tools/designer/src/components/buddyeditor/buddyeditor_tool.h")
moc("${ROOT}/tools/designer/src/components/formeditor/default_container.h")
moc("${ROOT}/tools/designer/src/components/formeditor/default_layoutdecoration.h")
moc("${ROOT}/tools/designer/src/components/formeditor/formeditor.h")
moc("${ROOT}/tools/designer/src/components/formeditor/formwindow.h")
moc("${ROOT}/tools/designer/src/components/formeditor/formwindowcursor.h")
moc("${ROOT}/tools/designer/src/components/formeditor/formwindowmanager.h")
moc("${ROOT}/tools/designer/src/components/formeditor/formwindow_widgetstack.h")
moc("${ROOT}/tools/designer/src/components/formeditor/iconcache.h")
moc("${ROOT}/tools/designer/src/components/formeditor/line_propertysheet.h")
moc("${ROOT}/tools/designer/src/components/formeditor/qdockwidget_container.h")
moc("${ROOT}/tools/designer/src/components/formeditor/qlayoutwidget_propertysheet.h")
moc("${ROOT}/tools/designer/src/components/formeditor/qmainwindow_container.h")
moc("${ROOT}/tools/designer/src/components/formeditor/qworkspace_container.h")
moc("${ROOT}/tools/designer/src/components/formeditor/spacer_propertysheet.h")
moc("${ROOT}/tools/designer/src/components/formeditor/tool_widgeteditor.h")
moc("${ROOT}/tools/designer/src/components/formeditor/widgetselection.h")
moc("${ROOT}/tools/designer/src/components/objectinspector/objectinspector.h")
moc("${ROOT}/tools/designer/src/components/propertyeditor/flagbox_p.h")
moc("${ROOT}/tools/designer/src/components/propertyeditor/flagbox_model_p.h")
moc("${ROOT}/tools/designer/src/components/propertyeditor/paletteeditor.h")
moc("${ROOT}/tools/designer/src/components/propertyeditor/paletteeditorbutton.h")
moc("${ROOT}/tools/designer/src/components/propertyeditor/previewframe.h")
moc("${ROOT}/tools/designer/src/components/propertyeditor/previewwidget.h")
moc("${ROOT}/tools/designer/src/components/propertyeditor/propertyeditor.h")
moc("${ROOT}/tools/designer/src/components/propertyeditor/qpropertyeditor.h")
moc("${ROOT}/tools/designer/src/components/propertyeditor/qpropertyeditor_delegate_p.h")
moc("${ROOT}/tools/designer/src/components/propertyeditor/qpropertyeditor_model_p.h")
moc("${ROOT}/tools/designer/src/components/propertyeditor/styledbutton.h")
moc("${ROOT}/tools/designer/src/components/resourceeditor/resourceeditor.h")
moc("${ROOT}/tools/designer/src/components/signalsloteditor/default_membersheet.h")
moc("${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditor.h")
moc("${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditor_p.h")
moc("${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditor_plugin.h")
moc("${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditor_tool.h")
moc("${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditorwindow.h")
moc("${ROOT}/tools/designer/src/components/tabordereditor/tabordereditor.h")
moc("${ROOT}/tools/designer/src/components/tabordereditor/tabordereditor_plugin.h")
moc("${ROOT}/tools/designer/src/components/tabordereditor/tabordereditor_tool.h")
moc("${ROOT}/tools/designer/src/components/taskmenu/button_taskmenu.h")
moc("${ROOT}/tools/designer/src/components/taskmenu/combobox_taskmenu.h")
moc("${ROOT}/tools/designer/src/components/taskmenu/groupbox_taskmenu.h")
moc("${ROOT}/tools/designer/src/components/taskmenu/inplace_editor.h")
moc("${ROOT}/tools/designer/src/components/taskmenu/label_taskmenu.h")
moc("${ROOT}/tools/designer/src/components/taskmenu/lineedit_taskmenu.h")
moc("${ROOT}/tools/designer/src/components/taskmenu/listwidget_taskmenu.h")
moc("${ROOT}/tools/designer/src/components/taskmenu/listwidgeteditor.h")
moc("${ROOT}/tools/designer/src/components/taskmenu/taskmenu_component.h")
moc("${ROOT}/tools/designer/src/components/taskmenu/textedit_taskmenu.h")
moc("${ROOT}/tools/designer/src/components/widgetbox/widgetbox.h")
moc("${ROOT}/tools/designer/src/designer/formwindowsettings.h")
moc("${ROOT}/tools/designer/src/designer/newform.h")
moc("${ROOT}/tools/designer/src/designer/plugindialog.h")
moc("${ROOT}/tools/designer/src/designer/qdesigner.h")
moc("${ROOT}/tools/designer/src/designer/qdesigner_actions.h")
moc("${ROOT}/tools/designer/src/designer/qdesigner_formwindow.h")
moc("${ROOT}/tools/designer/src/designer/qdesigner_objectinspector.h")
moc("${ROOT}/tools/designer/src/designer/qdesigner_propertyeditor.h")
moc("${ROOT}/tools/designer/src/designer/qdesigner_resourceeditor.h")
#moc("${ROOT}/tools/designer/src/designer/qdesigner_server.h")
moc("${ROOT}/tools/designer/src/designer/qdesigner_signalsloteditor.h")
moc("${ROOT}/tools/designer/src/designer/qdesigner_toolwindow.h")
moc("${ROOT}/tools/designer/src/designer/qdesigner_widgetbox.h")
moc("${ROOT}/tools/designer/src/designer/qdesigner_workbench.h")
moc("${ROOT}/tools/designer/src/designer/saveformastemplate.h")
moc("${ROOT}/tools/designer/src/designer/versiondialog.h")
moc("${ROOT}/tools/designer/src/lib/extension/default_extensionfactory.h")
moc("${ROOT}/tools/designer/src/lib/extension/qextensionmanager.h")
moc("${ROOT}/tools/designer/src/lib/sdk/abstractformeditor.h")
moc("${ROOT}/tools/designer/src/lib/sdk/abstractformwindow.h")
moc("${ROOT}/tools/designer/src/lib/sdk/abstractformwindowmanager.h")
moc("${ROOT}/tools/designer/src/lib/sdk/abstractformwindowtool.h")
moc("${ROOT}/tools/designer/src/lib/sdk/abstracticoncache.h")
moc("${ROOT}/tools/designer/src/lib/sdk/abstractmetadatabase.h")
moc("${ROOT}/tools/designer/src/lib/sdk/abstractobjectinspector.h")
moc("${ROOT}/tools/designer/src/lib/sdk/abstractpropertyeditor.h")
moc("${ROOT}/tools/designer/src/lib/sdk/abstractwidgetbox.h")
moc("${ROOT}/tools/designer/src/lib/sdk/abstractwidgetdatabase.h")
moc("${ROOT}/tools/designer/src/lib/sdk/abstractwidgetfactory.h")
moc("${ROOT}/tools/designer/src/lib/shared/connectionedit_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/findicondialog_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/invisible_widget_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/layout_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/metadatabase_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/pluginmanager_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/qdesigner_command_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/qdesigner_dockwidget_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/qdesigner_integration_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/qdesigner_promotedwidget_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/qdesigner_propertysheet_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/qdesigner_stackedbox_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/qdesigner_tabwidget_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/qdesigner_taskmenu_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/qdesigner_toolbox_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/qdesigner_widget_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/richtexteditor_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/spacer_widget_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/sheet_delegate_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/tree_widget_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/promotetocustomwidgetdialog_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/qlayout_widget_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/qtundo_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/resourcefile_p.h")
moc("${ROOT}/tools/designer/src/lib/shared/widgetdatabase_p.h")

moc2("widgetselection.moc" "${ROOT}/tools/designer/src/components/formeditor/widgetselection.cpp")
moc2("resourceeditor.moc" "${ROOT}/tools/designer/src/components/resourceeditor/resourceeditor.cpp")
moc2("signalsloteditor.moc" "${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditor.cpp")
moc2("signalsloteditorwindow.moc" "${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditorwindow.cpp")
moc2("propertyeditor.moc" "${ROOT}/tools/designer/src/components/propertyeditor/propertyeditor.cpp")
moc2("qpropertyeditor_delegate.moc" "${ROOT}/tools/designer/src/components/propertyeditor/qpropertyeditor_delegate.cpp")
moc2("widgetbox.moc" "${ROOT}/tools/designer/src/components/widgetbox/widgetbox.cpp")
moc2("versiondialog.moc" "${ROOT}/tools/designer/src/designer/versiondialog.cpp")
moc2("qdesigner_tabwidget.moc" "${ROOT}/tools/designer/src/lib/shared/qdesigner_tabwidget.cpp")
moc2("connectionedit.moc" "${ROOT}/tools/designer/src/lib/shared/connectionedit.cpp")
moc2("qtundo.moc" "${ROOT}/tools/designer/src/lib/shared/qtundo.cpp")
moc2("richtexteditor.moc" "${ROOT}/tools/designer/src/lib/shared/richtexteditor.cpp")
moc2("abstractformbuilder.moc" "${ROOT}/tools/designer/src/lib/uilib/abstractformbuilder.cpp")

uic("${ROOT}/tools/designer/src/components/propertyeditor/paletteeditor.ui")
uic("${ROOT}/tools/designer/src/components/propertyeditor/previewwidget.ui")
uic("${ROOT}/tools/designer/src/components/resourceeditor/resourceeditor.ui")
uic("${ROOT}/tools/designer/src/components/taskmenu/listwidgeteditor.ui")
uic("${ROOT}/tools/designer/src/components/taskmenu/treewidgeteditor.ui")
uic("${ROOT}/tools/designer/src/designer/formwindowsettings.ui")
uic("${ROOT}/tools/designer/src/designer/newform.ui")
uic("${ROOT}/tools/designer/src/designer/plugindialog.ui")
uic("${ROOT}/tools/designer/src/designer/saveformastemplate.ui")
uic("${ROOT}/tools/designer/src/lib/shared/findicondialog.ui")
uic("${ROOT}/tools/designer/src/lib/shared/promotetocustomwidgetdialog.ui")

rcc("${ROOT}/tools/designer/src/components/formeditor/formeditor.qrc")
rcc("${ROOT}/tools/designer/src/components/widgetbox/widgetbox.qrc")
rcc("${ROOT}/tools/designer/src/designer/designer.qrc")

set(src_components_buddyeditor
    "${ROOT}/tools/designer/src/components/buddyeditor/buddyeditor.cpp"
    "${ROOT}/tools/designer/src/components/buddyeditor/buddyeditor.h"
    "${ROOT}/tools/designer/src/components/buddyeditor/buddyeditor_global.h"
    "${ROOT}/tools/designer/src/components/buddyeditor/buddyeditor_instance.cpp"
    "${ROOT}/tools/designer/src/components/buddyeditor/buddyeditor_plugin.cpp"
    "${ROOT}/tools/designer/src/components/buddyeditor/buddyeditor_plugin.h"
    "${ROOT}/tools/designer/src/components/buddyeditor/buddyeditor_tool.cpp"
    "${ROOT}/tools/designer/src/components/buddyeditor/buddyeditor_tool.h"
    )

set(src_components_formeditor
    "${ROOT}/tools/designer/src/components/formeditor/default_container.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/default_container.h"
    "${ROOT}/tools/designer/src/components/formeditor/default_layoutdecoration.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/default_layoutdecoration.h"
    "${ROOT}/tools/designer/src/components/formeditor/formeditor.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/formeditor.h"
    "${ROOT}/tools/designer/src/components/formeditor/formeditor_global.h"
    "${ROOT}/tools/designer/src/components/formeditor/formwindow.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/formwindow.h"
    "${ROOT}/tools/designer/src/components/formeditor/formwindowcursor.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/formwindowcursor.h"
    "${ROOT}/tools/designer/src/components/formeditor/formwindowmanager.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/formwindowmanager.h"
    "${ROOT}/tools/designer/src/components/formeditor/formwindow_dnditem.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/formwindow_dnditem.h"
    "${ROOT}/tools/designer/src/components/formeditor/formwindow_widgetstack.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/formwindow_widgetstack.h"
    "${ROOT}/tools/designer/src/components/formeditor/iconcache.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/iconcache.h"
    "${ROOT}/tools/designer/src/components/formeditor/line_propertysheet.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/line_propertysheet.h"
    "${ROOT}/tools/designer/src/components/formeditor/qdesigner_resource.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/qdesigner_resource.h"
    "${ROOT}/tools/designer/src/components/formeditor/qdockwidget_container.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/qdockwidget_container.h"
    "${ROOT}/tools/designer/src/components/formeditor/qlayoutwidget_propertysheet.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/qlayoutwidget_propertysheet.h"
    "${ROOT}/tools/designer/src/components/formeditor/qmainwindow_container.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/qmainwindow_container.h"
    "${ROOT}/tools/designer/src/components/formeditor/qworkspace_container.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/qworkspace_container.h"
    "${ROOT}/tools/designer/src/components/formeditor/spacer_propertysheet.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/spacer_propertysheet.h"
    "${ROOT}/tools/designer/src/components/formeditor/tool_widgeteditor.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/tool_widgeteditor.h"
    "${ROOT}/tools/designer/src/components/formeditor/widgetselection.cpp"
    "${ROOT}/tools/designer/src/components/formeditor/widgetselection.h"
    )

set(src_components_lib
    "${ROOT}/tools/designer/src/components/lib/lib_pch.h"
    "${ROOT}/tools/designer/src/components/lib/qdesigner_components.cpp"
    )

set(src_components_objectinspector
    "${ROOT}/tools/designer/src/components/objectinspector/objectinspector.cpp"
    "${ROOT}/tools/designer/src/components/objectinspector/objectinspector.h"
    "${ROOT}/tools/designer/src/components/objectinspector/objectinspector_global.h"
    )

set(src_components_propertyeditor
    "${ROOT}/tools/designer/src/components/propertyeditor/defs.cpp"
    "${ROOT}/tools/designer/src/components/propertyeditor/defs.h"
    "${ROOT}/tools/designer/src/components/propertyeditor/flagbox.cpp"
    "${ROOT}/tools/designer/src/components/propertyeditor/flagbox_model.cpp"
    "${ROOT}/tools/designer/src/components/propertyeditor/flagbox_model_p.h"
    "${ROOT}/tools/designer/src/components/propertyeditor/flagbox_p.h"
    "${ROOT}/tools/designer/src/components/propertyeditor/paletteeditor.cpp"
    "${ROOT}/tools/designer/src/components/propertyeditor/paletteeditor.h"
    "${ROOT}/tools/designer/src/components/propertyeditor/paletteeditorbutton.cpp"
    "${ROOT}/tools/designer/src/components/propertyeditor/paletteeditorbutton.h"
    "${ROOT}/tools/designer/src/components/propertyeditor/previewframe.cpp"
    "${ROOT}/tools/designer/src/components/propertyeditor/previewframe.h"
    "${ROOT}/tools/designer/src/components/propertyeditor/previewwidget.cpp"
    "${ROOT}/tools/designer/src/components/propertyeditor/previewwidget.h"
    "${ROOT}/tools/designer/src/components/propertyeditor/propertyeditor.cpp"
    "${ROOT}/tools/designer/src/components/propertyeditor/propertyeditor.h"
    "${ROOT}/tools/designer/src/components/propertyeditor/propertyeditor_global.h"
    "${ROOT}/tools/designer/src/components/propertyeditor/qpropertyeditor.cpp"
    "${ROOT}/tools/designer/src/components/propertyeditor/qpropertyeditor.h"
    "${ROOT}/tools/designer/src/components/propertyeditor/qpropertyeditor_delegate.cpp"
    "${ROOT}/tools/designer/src/components/propertyeditor/qpropertyeditor_delegate_p.h"
    "${ROOT}/tools/designer/src/components/propertyeditor/qpropertyeditor_items.cpp"
    "${ROOT}/tools/designer/src/components/propertyeditor/qpropertyeditor_items_p.h"
    "${ROOT}/tools/designer/src/components/propertyeditor/qpropertyeditor_model.cpp"
    "${ROOT}/tools/designer/src/components/propertyeditor/qpropertyeditor_model_p.h"
    "${ROOT}/tools/designer/src/components/propertyeditor/styledbutton.cpp"
    "${ROOT}/tools/designer/src/components/propertyeditor/styledbutton.h"
    )

set(src_components_resourceeditor
    "${ROOT}/tools/designer/src/components/resourceeditor/resourceeditor.cpp"
    "${ROOT}/tools/designer/src/components/resourceeditor/resourceeditor.h"
    "${ROOT}/tools/designer/src/components/resourceeditor/resourceeditor_global.h"
    )

set(src_components_signalsloteditor
    "${ROOT}/tools/designer/src/components/signalsloteditor/default_membersheet.cpp"
    "${ROOT}/tools/designer/src/components/signalsloteditor/default_membersheet.h"
    "${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditor.cpp"
    "${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditor.h"
    "${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditorwindow.cpp"
    "${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditorwindow.h"
    "${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditor_global.h"
    "${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditor_instance.cpp"
    "${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditor_p.h"
    "${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditor_plugin.cpp"
    "${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditor_plugin.h"
    "${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditor_tool.cpp"
    "${ROOT}/tools/designer/src/components/signalsloteditor/signalsloteditor_tool.h"
    )

set(src_components_tabordereditor
    "${ROOT}/tools/designer/src/components/tabordereditor/tabordereditor.cpp"
    "${ROOT}/tools/designer/src/components/tabordereditor/tabordereditor.h"
    "${ROOT}/tools/designer/src/components/tabordereditor/tabordereditor_global.h"
    "${ROOT}/tools/designer/src/components/tabordereditor/tabordereditor_instance.cpp"
    "${ROOT}/tools/designer/src/components/tabordereditor/tabordereditor_plugin.cpp"
    "${ROOT}/tools/designer/src/components/tabordereditor/tabordereditor_plugin.h"
    "${ROOT}/tools/designer/src/components/tabordereditor/tabordereditor_tool.cpp"
    "${ROOT}/tools/designer/src/components/tabordereditor/tabordereditor_tool.h"
    )

set(src_components_taskmenu
    "${ROOT}/tools/designer/src/components/taskmenu/button_taskmenu.cpp"
    "${ROOT}/tools/designer/src/components/taskmenu/button_taskmenu.h"
    "${ROOT}/tools/designer/src/components/taskmenu/combobox_taskmenu.cpp"
    "${ROOT}/tools/designer/src/components/taskmenu/combobox_taskmenu.h"
    "${ROOT}/tools/designer/src/components/taskmenu/groupbox_taskmenu.cpp"
    "${ROOT}/tools/designer/src/components/taskmenu/groupbox_taskmenu.h"
    "${ROOT}/tools/designer/src/components/taskmenu/inplace_editor.cpp"
    "${ROOT}/tools/designer/src/components/taskmenu/inplace_editor.h"
    "${ROOT}/tools/designer/src/components/taskmenu/label_taskmenu.cpp"
    "${ROOT}/tools/designer/src/components/taskmenu/label_taskmenu.h"
    "${ROOT}/tools/designer/src/components/taskmenu/lineedit_taskmenu.cpp"
    "${ROOT}/tools/designer/src/components/taskmenu/lineedit_taskmenu.h"
    "${ROOT}/tools/designer/src/components/taskmenu/listwidgeteditor.cpp"
    "${ROOT}/tools/designer/src/components/taskmenu/listwidgeteditor.h"
    "${ROOT}/tools/designer/src/components/taskmenu/listwidget_taskmenu.cpp"
    "${ROOT}/tools/designer/src/components/taskmenu/listwidget_taskmenu.h"
    "${ROOT}/tools/designer/src/components/taskmenu/taskmenu_component.cpp"
    "${ROOT}/tools/designer/src/components/taskmenu/taskmenu_component.h"
    "${ROOT}/tools/designer/src/components/taskmenu/taskmenu_global.h"
    "${ROOT}/tools/designer/src/components/taskmenu/textedit_taskmenu.cpp"
    "${ROOT}/tools/designer/src/components/taskmenu/textedit_taskmenu.h"
    )

set(src_components_widgetbox
    "${ROOT}/tools/designer/src/components/widgetbox/widgetbox.cpp"
    "${ROOT}/tools/designer/src/components/widgetbox/widgetbox.h"
    "${ROOT}/tools/designer/src/components/widgetbox/widgetbox.xml"
    "${ROOT}/tools/designer/src/components/widgetbox/widgetbox_dnditem.cpp"
    "${ROOT}/tools/designer/src/components/widgetbox/widgetbox_dnditem.h"
    "${ROOT}/tools/designer/src/components/widgetbox/widgetbox_global.h"
    )

set(src_designer
    #"${ROOT}/tools/designer/src/designer/designer.rc"
    "${ROOT}/tools/designer/src/designer/formwindowsettings.cpp"
    "${ROOT}/tools/designer/src/designer/formwindowsettings.h"
    "${ROOT}/tools/designer/src/designer/main.cpp"
    "${ROOT}/tools/designer/src/designer/newform.cpp"
    "${ROOT}/tools/designer/src/designer/newform.h"
    "${ROOT}/tools/designer/src/designer/plugindialog.cpp"
    "${ROOT}/tools/designer/src/designer/plugindialog.h"
    "${ROOT}/tools/designer/src/designer/qdesigner.cpp"
    "${ROOT}/tools/designer/src/designer/qdesigner.h"
    "${ROOT}/tools/designer/src/designer/qdesigner_actions.cpp"
    "${ROOT}/tools/designer/src/designer/qdesigner_actions.h"
    "${ROOT}/tools/designer/src/designer/qdesigner_formwindow.cpp"
    "${ROOT}/tools/designer/src/designer/qdesigner_formwindow.h"
    "${ROOT}/tools/designer/src/designer/qdesigner_objectinspector.cpp"
    "${ROOT}/tools/designer/src/designer/qdesigner_objectinspector.h"
    "${ROOT}/tools/designer/src/designer/qdesigner_pch.h"
    "${ROOT}/tools/designer/src/designer/qdesigner_propertyeditor.cpp"
    "${ROOT}/tools/designer/src/designer/qdesigner_propertyeditor.h"
    "${ROOT}/tools/designer/src/designer/qdesigner_resourceeditor.cpp"
    "${ROOT}/tools/designer/src/designer/qdesigner_resourceeditor.h"
    #"${ROOT}/tools/designer/src/designer/qdesigner_server.cpp"
    #"${ROOT}/tools/designer/src/designer/qdesigner_server.h"
    "${ROOT}/tools/designer/src/designer/qdesigner_settings.cpp"
    "${ROOT}/tools/designer/src/designer/qdesigner_settings.h"
    "${ROOT}/tools/designer/src/designer/qdesigner_signalsloteditor.cpp"
    "${ROOT}/tools/designer/src/designer/qdesigner_signalsloteditor.h"
    "${ROOT}/tools/designer/src/designer/qdesigner_toolwindow.cpp"
    "${ROOT}/tools/designer/src/designer/qdesigner_toolwindow.h"
    "${ROOT}/tools/designer/src/designer/qdesigner_widgetbox.cpp"
    "${ROOT}/tools/designer/src/designer/qdesigner_widgetbox.h"
    "${ROOT}/tools/designer/src/designer/qdesigner_workbench.cpp"
    "${ROOT}/tools/designer/src/designer/qdesigner_workbench.h"
    "${ROOT}/tools/designer/src/designer/saveformastemplate.cpp"
    "${ROOT}/tools/designer/src/designer/saveformastemplate.h"
    "${ROOT}/tools/designer/src/designer/versiondialog.cpp"
    "${ROOT}/tools/designer/src/designer/versiondialog.h"
    )

set(src_lib_components
    "${ROOT}/tools/designer/src/lib/components/qdesigner_components.h"
    "${ROOT}/tools/designer/src/lib/components/qdesigner_components_global.h"
    )

set(src_lib_extension
    "${ROOT}/tools/designer/src/lib/extension/default_extensionfactory.cpp"
    "${ROOT}/tools/designer/src/lib/extension/default_extensionfactory.h"
    "${ROOT}/tools/designer/src/lib/extension/extension.cpp"
    "${ROOT}/tools/designer/src/lib/extension/extension.h"
    "${ROOT}/tools/designer/src/lib/extension/extension_global.h"
    "${ROOT}/tools/designer/src/lib/extension/qextensionmanager.cpp"
    "${ROOT}/tools/designer/src/lib/extension/qextensionmanager.h"
    )

set(src_lib_sdk
    "${ROOT}/tools/designer/src/lib/sdk/abstractdnditem.h"
    "${ROOT}/tools/designer/src/lib/sdk/abstractformeditor.cpp"
    "${ROOT}/tools/designer/src/lib/sdk/abstractformeditor.h"
    "${ROOT}/tools/designer/src/lib/sdk/abstractformeditorplugin.cpp"
    "${ROOT}/tools/designer/src/lib/sdk/abstractformeditorplugin.h"
    "${ROOT}/tools/designer/src/lib/sdk/abstractformwindow.cpp"
    "${ROOT}/tools/designer/src/lib/sdk/abstractformwindow.h"
    "${ROOT}/tools/designer/src/lib/sdk/abstractformwindowcursor.cpp"
    "${ROOT}/tools/designer/src/lib/sdk/abstractformwindowcursor.h"
    "${ROOT}/tools/designer/src/lib/sdk/abstractformwindowmanager.cpp"
    "${ROOT}/tools/designer/src/lib/sdk/abstractformwindowmanager.h"
    "${ROOT}/tools/designer/src/lib/sdk/abstractformwindowtool.cpp"
    "${ROOT}/tools/designer/src/lib/sdk/abstractformwindowtool.h"
    "${ROOT}/tools/designer/src/lib/sdk/abstracticoncache.h"
    "${ROOT}/tools/designer/src/lib/sdk/abstractmetadatabase.cpp"
    "${ROOT}/tools/designer/src/lib/sdk/abstractmetadatabase.h"
    "${ROOT}/tools/designer/src/lib/sdk/abstractobjectinspector.cpp"
    "${ROOT}/tools/designer/src/lib/sdk/abstractobjectinspector.h"
    "${ROOT}/tools/designer/src/lib/sdk/abstractpropertyeditor.cpp"
    "${ROOT}/tools/designer/src/lib/sdk/abstractpropertyeditor.h"
    "${ROOT}/tools/designer/src/lib/sdk/abstractwidgetbox.cpp"
    "${ROOT}/tools/designer/src/lib/sdk/abstractwidgetbox.h"
    "${ROOT}/tools/designer/src/lib/sdk/abstractwidgetdatabase.cpp"
    "${ROOT}/tools/designer/src/lib/sdk/abstractwidgetdatabase.h"
    "${ROOT}/tools/designer/src/lib/sdk/abstractwidgetfactory.cpp"
    "${ROOT}/tools/designer/src/lib/sdk/abstractwidgetfactory.h"
    "${ROOT}/tools/designer/src/lib/sdk/extrainfo.cpp"
    "${ROOT}/tools/designer/src/lib/sdk/extrainfo.h"
    "${ROOT}/tools/designer/src/lib/sdk/layoutdecoration.h"
    "${ROOT}/tools/designer/src/lib/sdk/membersheet.h"
    "${ROOT}/tools/designer/src/lib/sdk/propertysheet.h"
    "${ROOT}/tools/designer/src/lib/sdk/sdk_global.h"
    "${ROOT}/tools/designer/src/lib/sdk/taskmenu.h"
    )

set(src_lib_shared
    "${ROOT}/tools/designer/src/lib/shared/connectionedit.cpp"
    "${ROOT}/tools/designer/src/lib/shared/connectionedit_p.h"
    "${ROOT}/tools/designer/src/lib/shared/findicondialog.cpp"
    "${ROOT}/tools/designer/src/lib/shared/findicondialog_p.h"
    "${ROOT}/tools/designer/src/lib/shared/iconloader_p.h"
    "${ROOT}/tools/designer/src/lib/shared/invisible_widget.cpp"
    "${ROOT}/tools/designer/src/lib/shared/invisible_widget_p.h"
    "${ROOT}/tools/designer/src/lib/shared/layout.cpp"
    "${ROOT}/tools/designer/src/lib/shared/layoutinfo.cpp"
    "${ROOT}/tools/designer/src/lib/shared/layoutinfo_p.h"
    "${ROOT}/tools/designer/src/lib/shared/layout_p.h"
    "${ROOT}/tools/designer/src/lib/shared/metadatabase.cpp"
    "${ROOT}/tools/designer/src/lib/shared/metadatabase_p.h"
    "${ROOT}/tools/designer/src/lib/shared/pluginmanager.cpp"
    "${ROOT}/tools/designer/src/lib/shared/pluginmanager_p.h"
    "${ROOT}/tools/designer/src/lib/shared/promotetocustomwidgetdialog.cpp"
    "${ROOT}/tools/designer/src/lib/shared/promotetocustomwidgetdialog_p.h"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_command.cpp"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_command_p.h"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_dnditem.cpp"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_dnditem_p.h"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_dockwidget.cpp"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_dockwidget_p.h"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_formbuilder.cpp"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_formbuilder_p.h"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_integration.cpp"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_integration_p.h"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_promotedwidget.cpp"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_promotedwidget_p.h"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_propertysheet.cpp"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_propertysheet_p.h"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_stackedbox.cpp"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_stackedbox_p.h"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_tabwidget.cpp"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_tabwidget_p.h"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_taskmenu.cpp"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_taskmenu_p.h"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_toolbox.cpp"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_toolbox_p.h"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_utils_p.h"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_widget.cpp"
    "${ROOT}/tools/designer/src/lib/shared/qdesigner_widget_p.h"
    "${ROOT}/tools/designer/src/lib/shared/qlayout_widget.cpp"
    "${ROOT}/tools/designer/src/lib/shared/qlayout_widget_p.h"
    "${ROOT}/tools/designer/src/lib/shared/qtundo.cpp"
    "${ROOT}/tools/designer/src/lib/shared/qtundo_p.h"
    "${ROOT}/tools/designer/src/lib/shared/resourcefile.cpp"
    "${ROOT}/tools/designer/src/lib/shared/resourcefile_p.h"
    "${ROOT}/tools/designer/src/lib/shared/richtexteditor.cpp"
    "${ROOT}/tools/designer/src/lib/shared/richtexteditor_p.h"
    "${ROOT}/tools/designer/src/lib/shared/shared_global_p.h"
    "${ROOT}/tools/designer/src/lib/shared/sheet_delegate.cpp"
    "${ROOT}/tools/designer/src/lib/shared/sheet_delegate_p.h"
    "${ROOT}/tools/designer/src/lib/shared/spacer_widget.cpp"
    "${ROOT}/tools/designer/src/lib/shared/spacer_widget_p.h"
    "${ROOT}/tools/designer/src/lib/shared/tree_widget.cpp"
    "${ROOT}/tools/designer/src/lib/shared/tree_widget_p.h"
    "${ROOT}/tools/designer/src/lib/shared/widgetdatabase.cpp"
    "${ROOT}/tools/designer/src/lib/shared/widgetdatabase_p.h"
    "${ROOT}/tools/designer/src/lib/shared/widgetfactory.cpp"
    "${ROOT}/tools/designer/src/lib/shared/widgetfactory_p.h"
    )

set(src_lib_uilib
    "${ROOT}/tools/designer/src/lib/uilib/abstractformbuilder.cpp"
    "${ROOT}/tools/designer/src/lib/uilib/abstractformbuilder.h"
    "${ROOT}/tools/designer/src/lib/uilib/container.h"
    "${ROOT}/tools/designer/src/lib/uilib/customwidget.h"
    "${ROOT}/tools/designer/src/lib/uilib/formbuilder.cpp"
    "${ROOT}/tools/designer/src/lib/uilib/formbuilder.h"
    "${ROOT}/tools/designer/src/lib/uilib/ui4.cpp"
    "${ROOT}/tools/designer/src/lib/uilib/ui4.h"
    "${ROOT}/tools/designer/src/lib/uilib/uilib_global.h"
    "${ROOT}/tools/designer/src/lib/uilib/widgets.table"
    )

set(src_lib
    "${ROOT}/tools/designer/src/lib/lib_pch.h"
    )

source_group("Source Files\\components\\buddyeditor" FILES ${src_components_buddyeditor})
source_group("Source Files\\components\\formeditor" FILES ${src_components_formeditor})
source_group("Source Files\\components\\lib" FILES ${src_components_lib})
source_group("Source Files\\components\\objectinspector" FILES ${src_components_objectinspector})
source_group("Source Files\\components\\propertyeditor" FILES ${src_components_propertyeditor})
source_group("Source Files\\components\\resourceeditor" FILES ${src_components_resourceeditor})
source_group("Source Files\\components\\signalsloteditor" FILES ${src_components_signalsloteditor})
source_group("Source Files\\components\\tabordereditor" FILES ${src_components_tabordereditor})
source_group("Source Files\\components\\taskmenu" FILES ${src_components_taskmenu})
source_group("Source Files\\components\\widgetbox" FILES ${src_components_widgetbox})
source_group("Source Files\\designer" FILES ${src_designer})
source_group("Source Files\\lib\\components" FILES ${src_lib_components})
source_group("Source Files\\lib\\extension" FILES ${src_lib_extension})
source_group("Source Files\\lib\\sdk" FILES ${src_lib_sdk})
source_group("Source Files\\lib\\shared" FILES ${src_lib_shared})
source_group("Source Files\\lib\\uilib" FILES ${src_lib_uilib})
source_group("Source Files\\lib" FILES ${src_lib})

add_executable(designer WIN32 MACOSX_BUNDLE
    ${gen}
    ${src_components_buddyeditor}
    ${src_components_formeditor}
    ${src_components_lib}
    ${src_components_objectinspector}
    ${src_components_propertyeditor}
    ${src_components_resourceeditor}
    ${src_components_signalsloteditor}
    ${src_components_tabordereditor}
    ${src_components_taskmenu}
    ${src_components_widgetbox}
    ${src_designer}
    ${src_lib_components}
    ${src_lib_extension}
    ${src_lib_sdk}
    ${src_lib_shared}
    ${src_lib_uilib}
    ${src_lib}
    )

set_target_properties(designer PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}"
    )

target_compile_definitions(designer PRIVATE
    QT_DESIGNER_STATIC
    QT_NO_SHARED_EXPORT
    )

target_include_directories(designer PRIVATE
    "${ROOT}/include/QtDesigner"
    "${ROOT}/tools/designer/src/components"
    "${ROOT}/tools/designer/src/components/formeditor"
    "${ROOT}/tools/designer/src/components/propertyeditor"
    "${ROOT}/tools/designer/src/designer/extra"
    "${ROOT}/tools/designer/src/lib/sdk"
    "${ROOT}/tools/designer/src/lib/shared"
    "${ROOT}/tools/designer/src/lib/uilib"
    )

target_link_libraries(designer PRIVATE qt)
extra_link(designer EXE)

if(MSVC)
    source_group("Source Files" FILES _stdafx.h)
    target_sources(designer PRIVATE _stdafx.h)
    target_precompile_headers(designer PRIVATE _stdafx.h)
endif()
