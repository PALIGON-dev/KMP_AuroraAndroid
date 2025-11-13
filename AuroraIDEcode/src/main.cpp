#include <auroraapp.h>
#include <QtQuick>
#include <QDebug>
#include "libshared_api.h"

int main(int argc, char *argv[])
{
    QScopedPointer<QGuiApplication> app(Aurora::Application::application(argc, argv));
    app->setOrganizationName(QStringLiteral("ru.template"));
    app->setApplicationName(QStringLiteral("KMPAurora"));

    libshared_ExportedSymbols* symbols = libshared_symbols();

    libshared_SharedViewModel* vm = symbols->kotlin.root.com.example.shared.SharedViewModel_CreateWithPlatformBattery();

    QScopedPointer<QQuickView> view(Aurora::Application::createView());
    view->rootContext()->setContextProperty("sharedViewModel", QVariant::fromValue((void*)vm));
    view->setSource(Aurora::Application::pathTo(QStringLiteral("qml/MainScreen.qml")));
    view->show();

    int result = app->exec();

    symbols->kotlin.root.com.example.shared.SharedViewModel_Destroy(vm);

    return result;
}
