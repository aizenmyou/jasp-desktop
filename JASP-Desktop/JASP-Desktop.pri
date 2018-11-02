   macx:ICON = $$PWD/icon.icns
windows:RC_FILE = $$PWD/icon.rc


RESOURCES += \
    $$PWD/html/html.qrc \
    $$PWD/resources/icons.qrc \
    $$PWD/resources/resources.qrc \
    $$PWD/qml.qrc \
    $$PWD/widgets/backstage/backstage.qrc

   unix:OTHER_FILES += $$PWD/icon.icns
windows:OTHER_FILES += $$PWD/icon.rc

HELP_PATH = $${PWD}/../Docs/help
RESOURCES_PATH = $${PWD}/../Resources

win32 {
    RESOURCES_PATH_DEST = $${OUT_PWD}/../Resources/

    RESOURCES_PATH ~= s,/,\\,g
    RESOURCES_PATH_DEST ~= s,/,\\,g

    copyres.commands  += $$quote(cmd /c xcopy /S /I /Y $${RESOURCES_PATH} $${RESOURCES_PATH_DEST})
}

macx {
    RESOURCES_PATH_DEST = $${OUT_PWD}/../../Resources/

    copyres.commands += $(MKDIR) $$RESOURCES_PATH_DEST ;
    copyres.commands += cp -R $$RESOURCES_PATH/* $$RESOURCES_PATH_DEST ;
}

linux {
    RESOURCES_PATH_DEST = $${OUT_PWD}/../Resources/

    copyres.commands += $(MKDIR) $$RESOURCES_PATH_DEST ;
    copyres.commands += cp -R $$RESOURCES_PATH/* $$RESOURCES_PATH_DEST ;
}

! equals(PWD, $${OUT_PWD}) {
    QMAKE_EXTRA_TARGETS += copyres
    POST_TARGETDEPS     += copyres
}

DISTFILES += \
    $$PWD/backstage/firsttabsstylesheet.qss \
    $$PWD/backstage/secondtabsstylesheet.qss \
    $$PWD/widgets/backstage/firsttabsstylesheet.qss \
    $$PWD/widgets/backstage/secondtabsstylesheet.qss \
    $$PWD/JASPControls/AssignButton.qml \
    $$PWD/JASPControls/AssignedVariablesList.qml \
    $$PWD/JASPControls/Button.qml \
    $$PWD/JASPControls/ButtonGroup.qml \
    $$PWD/JASPControls/CheckBox.qml \
    $$PWD/JASPControls/ComboBox.qml \
    $$PWD/JASPControls/ExpanderButton.qml \
    $$PWD/JASPControls/Form.qml \
    $$PWD/JASPControls/GridLayout.qml \
    $$PWD/JASPControls/GroupBox.qml \
    $$PWD/JASPControls/JASPControl.qml \
    $$PWD/JASPControls/JASPDataView.qml \
    $$PWD/JASPControls/Label.qml \
    $$PWD/JASPControls/PercentField.qml \
    $$PWD/JASPControls/RadioButton.qml \
    $$PWD/JASPControls/Switch.qml \
    $$PWD/JASPControls/TableView.qml \
    $$PWD/JASPControls/TextField.qml \
    $$PWD/JASPControls/VariablesForm.qml \
    $$PWD/JASPControls/VariablesList.qml \
    $$PWD/widgets/backstage/BackstageDataLibrary.qml \
    $$PWD/widgets/backstage/DataLibraryBreadCrumbs.qml \
    $$PWD/widgets/backstage/DataLibraryList.qml \
    $$PWD/JASPControls/AssignButton.qml \
    $$PWD/JASPControls/AssignedVariablesList.qml \
    $$PWD/JASPControls/Button.qml \
    $$PWD/JASPControls/ButtonGroup.qml \
    $$PWD/JASPControls/CheckBox.qml \
    $$PWD/JASPControls/ComboBox.qml \
    $$PWD/JASPControls/ExpanderButton.qml \
    $$PWD/JASPControls/Form.qml \
    $$PWD/JASPControls/GridLayout.qml \
    $$PWD/JASPControls/GroupBox.qml \
    $$PWD/JASPControls/JASPControl.qml \
    $$PWD/JASPControls/JASPDataView.qml \
    $$PWD/JASPControls/Label.qml \
    $$PWD/JASPControls/PercentField.qml \
    $$PWD/JASPControls/RadioButton.qml \
    $$PWD/JASPControls/Switch.qml \
    $$PWD/JASPControls/TableView.qml \
    $$PWD/JASPControls/TextField.qml \
    $$PWD/JASPControls/VariablesForm.qml \
    $$PWD/JASPControls/VariablesList.qml \
    $$PWD/modules/ModuleInstaller.qml \
    $$PWD/QMLTheme/Theme/JASPTheme.qml \
    $$PWD/components/JASP/Controls/tableviewcolumn.qmodel


HEADERS += \
    $$PWD/analysis/analysisform.h \
    $$PWD/analysis/analysisqmldefines.h \
    $$PWD/analysis/analysisqmlform.h \
    $$PWD/analysis/boundqmlitem.h \
    $$PWD/analysis/options/availablefields.h \
    $$PWD/analysis/options/bound.h \
    $$PWD/analysis/options/option.h \
    $$PWD/analysis/options/optionboolean.h \
    $$PWD/analysis/options/optioncomputedcolumn.h \
    $$PWD/analysis/options/optiondoublearray.h \
    $$PWD/analysis/options/optioni.h \
    $$PWD/analysis/options/optioninteger.h \
    $$PWD/analysis/options/optionintegerarray.h \
    $$PWD/analysis/options/optionlist.h \
    $$PWD/analysis/options/optionnumber.h \
    $$PWD/analysis/options/options.h \
    $$PWD/analysis/options/optionstable.h \
    $$PWD/analysis/options/optionstring.h \
    $$PWD/analysis/options/optionterm.h \
    $$PWD/analysis/options/optionterms.h \
    $$PWD/analysis/options/optionvariable.h \
    $$PWD/analysis/options/optionvariablei.h \
    $$PWD/analysis/options/optionvariables.h \
    $$PWD/analysis/options/optionvariablesgroups.h \
    $$PWD/analysis/options/term.h \
    $$PWD/analysis/options/terms.h \
    $$PWD/analysis/analyses.h \
    $$PWD/analysis/analysis.h \
    $$PWD/analysis/analysisloader.h \
    $$PWD/data/exporters/dataexporter.h \
    $$PWD/data/exporters/exporter.h \
    $$PWD/data/exporters/jaspexporter.h \
    $$PWD/data/exporters/resultexporter.h \
    $$PWD/data/importers/ods/odsimportcolumn.h \
    $$PWD/data/importers/ods/odsimportdataset.h \
    $$PWD/data/importers/ods/odssheetcell.h \
    $$PWD/data/importers/ods/odstypes.h \
    $$PWD/data/importers/ods/odsxmlcontentshandler.h \
    $$PWD/data/importers/ods/odsxmlhandler.h \
    $$PWD/data/importers/ods/odsxmlmanifesthandler.h \
    $$PWD/data/importers/spss/characterencodingrecord.h \
    $$PWD/data/importers/spss/cpconverter.h \
    $$PWD/data/importers/spss/datainforecord.h \
    $$PWD/data/importers/spss/datarecords.h \
    $$PWD/data/importers/spss/dictionaryterminationrecord.h \
    $$PWD/data/importers/spss/documentrecord.h \
    $$PWD/data/importers/spss/extnumbercasesrecord.h \
    $$PWD/data/importers/spss/fileheaderrecord.h \
    $$PWD/data/importers/spss/floatinforecord.h \
    $$PWD/data/importers/spss/integerinforecord.h \
    $$PWD/data/importers/spss/longvarnamesrecord.h \
    $$PWD/data/importers/spss/measures.h \
    $$PWD/data/importers/spss/miscinforecord.h \
    $$PWD/data/importers/spss/missingvaluechecker.h \
    $$PWD/data/importers/spss/numericconverter.h \
    $$PWD/data/importers/spss/readablerecord.h \
    $$PWD/data/importers/spss/spssformattype.h \
    $$PWD/data/importers/spss/spssimportcolumn.h \
    $$PWD/data/importers/spss/spssimportdataset.h \
    $$PWD/data/importers/spss/spssstream.h \
    $$PWD/data/importers/spss/stringutils.h \
    $$PWD/data/importers/spss/systemfileformat.h \
    $$PWD/data/importers/spss/valuelabelvarsrecord.h \
    $$PWD/data/importers/spss/vardisplayparamrecord.h \
    $$PWD/data/importers/spss/variablerecord.h \
    $$PWD/data/importers/spss/verylongstringrecord.h \
    $$PWD/data/importers/codepageconvert.h \
    $$PWD/data/importers/convertedstringcontainer.h \
    $$PWD/data/importers/csv.h \
    $$PWD/data/importers/csvimportcolumn.h \
    $$PWD/data/importers/csvimporter.h \
    $$PWD/data/importers/importcolumn.h \
    $$PWD/data/importers/importdataset.h \
    $$PWD/data/importers/importer.h \
    $$PWD/data/importers/importerutils.h \
    $$PWD/data/importers/jaspimporter.h \
    $$PWD/data/importers/odsimporter.h \
    $$PWD/data/importers/spssimporter.h \
    $$PWD/data/asyncloader.h \
    $$PWD/data/asyncloaderthread.h \
    $$PWD/data/columnsmodel.h \
    $$PWD/data/computedcolumn.h \
    $$PWD/data/computedcolumns.h \
    $$PWD/data/computedcolumnsmodel.h \
    $$PWD/data/datasetloader.h \
    $$PWD/data/datasetpackage.h \
    $$PWD/data/datasettablemodel.h \
    $$PWD/data/fileevent.h \
    $$PWD/analysis/options/variableinfo.h \
    $$PWD/engine/enginerepresentation.h \
    $$PWD/engine/enginesync.h \
    $$PWD/engine/rscriptstore.h \
    $$PWD/gui/aboutdialog.h \
    $$PWD/gui/aboutdialogjsinterface.h \
    $$PWD/QML/datasetview.h \
    $$PWD/modules/analysisentry.h \
    $$PWD/modules/dynamicmodule.h \
    $$PWD/modules/dynamicmodules.h \
    $$PWD/modules/module.h \
    $$PWD/modules/ribbonentry.h \
    $$PWD/osf/onlinedataconnection.h \
    $$PWD/osf/onlinedatamanager.h \
    $$PWD/osf/onlinedatanode.h \
    $$PWD/osf/onlinedatanodeosf.h \
    $$PWD/osf/onlinenode.h \
    $$PWD/osf/onlineusernode.h \
    $$PWD/osf/onlineusernodeosf.h \
    $$PWD/osf/osfnam.h \
    $$PWD/utilities/appdirs.h \
    $$PWD/utilities/application.h \
    $$PWD/utilities/jsonutilities.h \
    $$PWD/utilities/qutils.h \
    $$PWD/utilities/resultsjsinterface.h \
    $$PWD/utilities/settings.h \
    $$PWD/utilities/simplecrypt.h \
    $$PWD/utilities/simplecryptkey.h \
    $$PWD/variablespage/labelfiltergenerator.h \
    $$PWD/variablespage/levelstablemodel.h \
    $$PWD/widgets/backstage/authwidget.h \
    $$PWD/widgets/backstage/backstagecomputer.h \
    $$PWD/widgets/backstage/backstagedatalibrary.h \
    $$PWD/widgets/backstage/backstageosf.h \
    $$PWD/widgets/backstage/backstagepage.h \
    $$PWD/widgets/backstage/breadcrumbs.h \
    $$PWD/widgets/backstage/datalibrarybreadcrumbsmodel.h \
    $$PWD/widgets/backstage/datalibrarylistmodel.h \
    $$PWD/widgets/backstage/elidelabel.h \
    $$PWD/widgets/backstage/fsbmcomputer.h \
    $$PWD/widgets/backstage/fsbmcurrent.h \
    $$PWD/widgets/backstage/fsbmexamples.h \
    $$PWD/widgets/backstage/fsbmodel.h \
    $$PWD/widgets/backstage/fsbmosf.h \
    $$PWD/widgets/backstage/fsbmrecent.h \
    $$PWD/widgets/backstage/fsbmrecentfolders.h \
    $$PWD/widgets/backstage/fsbrowser.h \
    $$PWD/widgets/backstage/fsentry.h \
    $$PWD/widgets/backstage/fsentrywidget.h \
    $$PWD/widgets/backstage/opensavewidget.h \
    $$PWD/widgets/backstage/verticalscrollarea.h \
    $$PWD/widgets/backstage/verticaltabbar.h \
    $$PWD/widgets/backstage/verticaltabwidget.h \
    $$PWD/widgets/anovamodelwidget.h \
    $$PWD/widgets/assignbutton.h \
    $$PWD/widgets/assignbuttonmenu.h \
    $$PWD/widgets/availablefieldslistview.h \
    $$PWD/widgets/backstagewidget.h \
    $$PWD/widgets/boundassignwidget.h \
    $$PWD/widgets/boundcheckbox.h \
    $$PWD/widgets/boundcombobox.h \
    $$PWD/widgets/boundgroupbox.h \
    $$PWD/widgets/boundlistview.h \
    $$PWD/widgets/boundmodel.h \
    $$PWD/widgets/boundpairstable.h \
    $$PWD/widgets/boundqmlcheckbox.h \
    $$PWD/widgets/boundqmlradiobuttons.h \
    $$PWD/widgets/boundqmltextinput.h \
    $$PWD/widgets/boundqmlcombobox.h \
    $$PWD/widgets/boundsingleitemview.h \
    $$PWD/widgets/boundtableview.h \
    $$PWD/widgets/boundtablewidget.h \
    $$PWD/widgets/boundtextbox.h \
    $$PWD/widgets/boundtextedit.h \
    $$PWD/widgets/button.h \
    $$PWD/widgets/customhoverdelegate.h \
    $$PWD/widgets/customwebenginepage.h \
    $$PWD/widgets/customwebengineview.h \
    $$PWD/widgets/draganddrop.h \
    $$PWD/widgets/droptarget.h \
    $$PWD/widgets/enhanceddroptarget.h \
    $$PWD/widgets/expanderbutton.h \
    $$PWD/widgets/groupbox.h \
    $$PWD/widgets/infopopup.h \
    $$PWD/widgets/itemmodelselectitem.h \
    $$PWD/widgets/itemmodelselectvariable.h \
    $$PWD/widgets/listmodelanovaassigned.h \
    $$PWD/widgets/listmodelpairsassigned.h \
    $$PWD/widgets/listmodeltermsassigned.h \
    $$PWD/widgets/listmodeltermsavailable.h \
    $$PWD/widgets/listview.h \
    $$PWD/gui/preferencesdialog.h \
    $$PWD/widgets/ribbonbutton.h \
    $$PWD/widgets/stealthbutton.h \
    $$PWD/widgets/subjectivepriorswidget.h \
    $$PWD/widgets/tabbar.h \
    $$PWD/widgets/tablemodel.h \
    $$PWD/widgets/tablemodelanovadesign.h \
    $$PWD/widgets/tablemodelanovamodel.h \
    $$PWD/widgets/tablemodelanovamodelnuisancefactors.h \
    $$PWD/widgets/tablemodelanovawithinsubjectcells.h \
    $$PWD/widgets/tablemodelcontrasts.h \
    $$PWD/widgets/tablemodelpairsassigned.h \
    $$PWD/widgets/tablemodelvariables.h \
    $$PWD/widgets/tablemodelvariablesassigned.h \
    $$PWD/widgets/tablemodelvariablesavailable.h \
    $$PWD/widgets/tablemodelvariableslevels.h \
    $$PWD/widgets/tablemodelvariablesoptions.h \
    $$PWD/widgets/tableview.h \
    $$PWD/widgets/tableviewmenueditor.h \
    $$PWD/widgets/tableviewmenueditordelegate.h \
    $$PWD/widgets/textmodellavaan.h \
    $$PWD/widgets/toolbutton.h \
    $$PWD/mainwindow.h \
    $$PWD/analysis/ribbons/ribbonwidget.h \
    $$PWD/utilities/extractarchive.h \
    $$PWD/widgets/boundqmlfactorslist.h \
    $$PWD/widgets/listmodelfactors.h \
    $$PWD/widgets/listmodel.h \
    $$PWD/widgets/qmllistview.h \
    $$PWD/widgets/qmlitem.h \
    $$PWD/widgets/listmodelassignedinterface.h \
    $$PWD/widgets/listmodelavailableinterface.h \
    $$PWD/widgets/listmodeldraggable.h \
    $$PWD/widgets/qmllistviewdraggable.h \
    $$PWD/widgets/boundqmllistviewmeasurescells.h \
    $$PWD/widgets/boundqmllistviewpairs.h \
    $$PWD/widgets/boundqmllistviewdraggable.h \
    $$PWD/widgets/listmodelmeasurescellsassigned.h \
    $$PWD/widgets/qmllistviewtermsavailable.h \
    $$PWD/widgets/boundqmllistviewterms.h \
    $$PWD/widgets/boundqmllistviewanovamodels.h \
    $$PWD/widgets/boundqmlslider.h \
    $$PWD/widgets/boundqmltextarea.h

SOURCES += \
    $$PWD/analysis/analysisform.cpp \
    $$PWD/analysis/analysisqmldefines.cpp \
    $$PWD/analysis/analysisqmlform.cpp \
    $$PWD/analysis/boundqmlitem.cpp \
    $$PWD/analysis/options/availablefields.cpp \
    $$PWD/analysis/options/option.cpp \
    $$PWD/analysis/options/optionboolean.cpp \
    $$PWD/analysis/options/optioncomputedcolumn.cpp \
    $$PWD/analysis/options/optiondoublearray.cpp \
    $$PWD/analysis/options/optioninteger.cpp \
    $$PWD/analysis/options/optionintegerarray.cpp \
    $$PWD/analysis/options/optionlist.cpp \
    $$PWD/analysis/options/optionnumber.cpp \
    $$PWD/analysis/options/options.cpp \
    $$PWD/analysis/options/optionstable.cpp \
    $$PWD/analysis/options/optionstring.cpp \
    $$PWD/analysis/options/optionterm.cpp \
    $$PWD/analysis/options/optionterms.cpp \
    $$PWD/analysis/options/optionvariable.cpp \
    $$PWD/analysis/options/optionvariables.cpp \
    $$PWD/analysis/options/optionvariablesgroups.cpp \
    $$PWD/analysis/options/term.cpp \
    $$PWD/analysis/options/terms.cpp \
    $$PWD/analysis/analyses.cpp \
    $$PWD/analysis/analysis.cpp \
    $$PWD/analysis/analysisloader.cpp \
    $$PWD/data/exporters/dataexporter.cpp \
    $$PWD/data/exporters/exporter.cpp \
    $$PWD/data/exporters/jaspexporter.cpp \
    $$PWD/data/exporters/resultexporter.cpp \
    $$PWD/data/importers/ods/odsimportcolumn.cpp \
    $$PWD/data/importers/ods/odsimportdataset.cpp \
    $$PWD/data/importers/ods/odssheetcell.cpp \
    $$PWD/data/importers/ods/odstypes.cpp \
    $$PWD/data/importers/ods/odsxmlcontentshandler.cpp \
    $$PWD/data/importers/ods/odsxmlhandler.cpp \
    $$PWD/data/importers/ods/odsxmlmanifesthandler.cpp \
    $$PWD/data/importers/spss/characterencodingrecord.cpp \
    $$PWD/data/importers/spss/datainforecord.cpp \
    $$PWD/data/importers/spss/datarecords.cpp \
    $$PWD/data/importers/spss/dictionaryterminationrecord.cpp \
    $$PWD/data/importers/spss/documentrecord.cpp \
    $$PWD/data/importers/spss/extnumbercasesrecord.cpp \
    $$PWD/data/importers/spss/fileheaderrecord.cpp \
    $$PWD/data/importers/spss/floatinforecord.cpp \
    $$PWD/data/importers/spss/integerinforecord.cpp \
    $$PWD/data/importers/spss/longvarnamesrecord.cpp \
    $$PWD/data/importers/spss/miscinforecord.cpp \
    $$PWD/data/importers/spss/missingvaluechecker.cpp \
    $$PWD/data/importers/spss/numericconvertor.cpp \
    $$PWD/data/importers/spss/readablerecord.cpp \
    $$PWD/data/importers/spss/spssimportcolumn.cpp \
    $$PWD/data/importers/spss/spssimportdataset.cpp \
    $$PWD/data/importers/spss/stringutils.cpp \
    $$PWD/data/importers/spss/valuelabelvarsrecord.cpp \
    $$PWD/data/importers/spss/vardisplayparamrecord.cpp \
    $$PWD/data/importers/spss/variablerecord.cpp \
    $$PWD/data/importers/spss/verylongstringrecord.cpp \
    $$PWD/data/importers/codepageconvert.cpp \
    $$PWD/data/importers/convertedstringcontainer.cpp \
    $$PWD/data/importers/csv.cpp \
    $$PWD/data/importers/csvimportcolumn.cpp \
    $$PWD/data/importers/csvimporter.cpp \
    $$PWD/data/importers/importcolumn.cpp \
    $$PWD/data/importers/importdataset.cpp \
    $$PWD/data/importers/importer.cpp \
    $$PWD/data/importers/jaspimporter.cpp \
    $$PWD/data/importers/odsimporter.cpp \
    $$PWD/data/importers/spssimporter.cpp \
    $$PWD/data/asyncloader.cpp \
    $$PWD/data/asyncloaderthread.cpp \
    $$PWD/data/columnsmodel.cpp \
    $$PWD/data/computedcolumn.cpp \
    $$PWD/data/computedcolumns.cpp \
    $$PWD/data/computedcolumnsmodel.cpp \
    $$PWD/data/datasetloader.cpp \
    $$PWD/data/datasetpackage.cpp \
    $$PWD/data/datasettablemodel.cpp \
    $$PWD/data/fileevent.cpp \
    $$PWD/engine/enginerepresentation.cpp \
    $$PWD/engine/enginesync.cpp \
    $$PWD/gui/aboutdialog.cpp \
    $$PWD/gui/aboutdialogjsinterface.cpp \
    $$PWD/QML/datasetview.cpp \
    $$PWD/modules/analysisentry.cpp \
    $$PWD/modules/dynamicmodule.cpp \
    $$PWD/modules/dynamicmodules.cpp \
    $$PWD/modules/module.cpp \
    $$PWD/modules/ribbonentry.cpp \
    $$PWD/osf/onlinedataconnection.cpp \
    $$PWD/osf/onlinedatamanager.cpp \
    $$PWD/osf/onlinedatanode.cpp \
    $$PWD/osf/onlinedatanodeosf.cpp \
    $$PWD/osf/onlinenode.cpp \
    $$PWD/osf/onlineusernode.cpp \
    $$PWD/osf/onlineusernodeosf.cpp \
    $$PWD/osf/osfnam.cpp \
    $$PWD/utilities/appdirs.cpp \
    $$PWD/utilities/application.cpp \
    $$PWD/utilities/jsonutilities.cpp \
    $$PWD/utilities/qutils.cpp \
    $$PWD/utilities/resultsjsinterface.cpp \
    $$PWD/utilities/settings.cpp \
    $$PWD/utilities/simplecrypt.cpp \
    $$PWD/variablespage/labelfiltergenerator.cpp \
    $$PWD/variablespage/levelstablemodel.cpp \
    $$PWD/widgets/backstage/authwidget.cpp \
    $$PWD/widgets/backstage/backstagecomputer.cpp \
    $$PWD/widgets/backstage/backstagedatalibrary.cpp \
    $$PWD/widgets/backstage/backstageosf.cpp \
    $$PWD/widgets/backstage/backstagepage.cpp \
    $$PWD/widgets/backstage/breadcrumbs.cpp \
    $$PWD/widgets/backstage/datalibrarybreadcrumbsmodel.cpp \
    $$PWD/widgets/backstage/datalibrarylistmodel.cpp \
    $$PWD/widgets/backstage/elidelabel.cpp \
    $$PWD/widgets/backstage/fsbmcomputer.cpp \
    $$PWD/widgets/backstage/fsbmcurrent.cpp \
    $$PWD/widgets/backstage/fsbmexamples.cpp \
    $$PWD/widgets/backstage/fsbmodel.cpp \
    $$PWD/widgets/backstage/fsbmosf.cpp \
    $$PWD/widgets/backstage/fsbmrecent.cpp \
    $$PWD/widgets/backstage/fsbmrecentfolders.cpp \
    $$PWD/widgets/backstage/fsbrowser.cpp \
    $$PWD/widgets/backstage/fsentrywidget.cpp \
    $$PWD/widgets/backstage/opensavewidget.cpp \
    $$PWD/widgets/backstage/verticalscrollarea.cpp \
    $$PWD/widgets/backstage/verticaltabbar.cpp \
    $$PWD/widgets/backstage/verticaltabwidget.cpp \
    $$PWD/widgets/anovamodelwidget.cpp \
    $$PWD/widgets/assignbutton.cpp \
    $$PWD/widgets/assignbuttonmenu.cpp \
    $$PWD/widgets/availablefieldslistview.cpp \
    $$PWD/widgets/backstagewidget.cpp \
    $$PWD/widgets/boundassignwidget.cpp \
    $$PWD/widgets/boundcheckbox.cpp \
    $$PWD/widgets/boundcombobox.cpp \
    $$PWD/widgets/boundgroupbox.cpp \
    $$PWD/widgets/boundlistview.cpp \
    $$PWD/widgets/boundpairstable.cpp \
    $$PWD/widgets/boundqmlcheckbox.cpp \
    $$PWD/widgets/boundqmlradiobuttons.cpp \
    $$PWD/widgets/boundqmltextinput.cpp \
    $$PWD/widgets/boundqmlcombobox.cpp \
    $$PWD/widgets/boundsingleitemview.cpp \
    $$PWD/widgets/boundtableview.cpp \
    $$PWD/widgets/boundtablewidget.cpp \
    $$PWD/widgets/boundtextbox.cpp \
    $$PWD/widgets/boundtextedit.cpp \
    $$PWD/widgets/button.cpp \
    $$PWD/widgets/customwebenginepage.cpp \
    $$PWD/widgets/customwebengineview.cpp \
    $$PWD/widgets/draganddrop.cpp \
    $$PWD/widgets/expanderbutton.cpp \
    $$PWD/widgets/infopopup.cpp \
    $$PWD/widgets/itemmodelselectitem.cpp \
    $$PWD/widgets/itemmodelselectvariable.cpp \
    $$PWD/widgets/listmodelanovaassigned.cpp \
    $$PWD/widgets/listmodelpairsassigned.cpp \
    $$PWD/widgets/listmodeltermsassigned.cpp \
    $$PWD/widgets/listmodeltermsavailable.cpp \
    $$PWD/widgets/listview.cpp \
    $$PWD/gui/preferencesdialog.cpp \
    $$PWD/widgets/ribbonbutton.cpp \
    $$PWD/widgets/stealthbutton.cpp \
    $$PWD/widgets/subjectivepriorswidget.cpp \
    $$PWD/widgets/tabbar.cpp \
    $$PWD/widgets/tablemodelanovadesign.cpp \
    $$PWD/widgets/tablemodelanovamodel.cpp \
    $$PWD/widgets/tablemodelanovamodelnuisancefactors.cpp \
    $$PWD/widgets/tablemodelanovawithinsubjectcells.cpp \
    $$PWD/widgets/tablemodelcontrasts.cpp \
    $$PWD/widgets/tablemodelpairsassigned.cpp \
    $$PWD/widgets/tablemodelvariables.cpp \
    $$PWD/widgets/tablemodelvariablesassigned.cpp \
    $$PWD/widgets/tablemodelvariablesavailable.cpp \
    $$PWD/widgets/tablemodelvariableslevels.cpp \
    $$PWD/widgets/tablemodelvariablesoptions.cpp \
    $$PWD/widgets/tableview.cpp \
    $$PWD/widgets/tableviewmenueditor.cpp \
    $$PWD/widgets/tableviewmenueditordelegate.cpp \
    $$PWD/widgets/textmodellavaan.cpp \
    $$PWD/widgets/toolbutton.cpp \
    $$PWD/main.cpp \
    $$PWD/mainwindow.cpp \
    $$PWD/analysis/ribbons/ribbonwidget.cpp \
    $$PWD/utilities/extractarchive.cpp \
    $$PWD/widgets/boundqmlfactorslist.cpp \
    $$PWD/widgets/listmodelfactors.cpp \
    $$PWD/widgets/listmodel.cpp \
    $$PWD/widgets/qmllistview.cpp \
    $$PWD/widgets/qmlitem.cpp \
    $$PWD/widgets/listmodelavailableinterface.cpp \
    $$PWD/widgets/listmodelassignedinterface.cpp \
    $$PWD/widgets/listmodeldraggable.cpp \
    $$PWD/widgets/qmllistviewdraggable.cpp \
    $$PWD/widgets/boundqmllistviewmeasurescells.cpp \
    $$PWD/widgets/boundqmllistviewpairs.cpp \
    $$PWD/widgets/boundqmllistviewdraggable.cpp \
    $$PWD/widgets/listmodelmeasurescellsassigned.cpp \
    $$PWD/widgets/qmllistviewtermsavailable.cpp \
    $$PWD/widgets/boundqmllistviewterms.cpp \
    $$PWD/widgets/boundqmllistviewanovamodels.cpp \
    $$PWD/widgets/boundqmlslider.cpp \
    $$PWD/widgets/boundqmltextarea.cpp

FORMS += \
    $$PWD/gui/aboutdialog.ui \
    $$PWD/gui/preferencesdialog.ui \
    $$PWD/widgets/backstage/authwidget.ui \
    $$PWD/widgets/backstage/backstagecomputer.ui \
    $$PWD/widgets/backstage/backstagedatalibrary.ui \
    $$PWD/mainwindow.ui \
    $$PWD/widgets/anovamodelwidget.ui \
    $$PWD/widgets/backstageform.ui \
    $$PWD/widgets/boundassignwidget.ui \
    $$PWD/widgets/datasetbrowser.ui \
    $$PWD/widgets/subjectivepriorswidget.ui \
    $$PWD/widgets/variableswidget.ui
