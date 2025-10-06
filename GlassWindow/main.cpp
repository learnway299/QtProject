#include <QApplication>
#include "GlassWindow.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    GlassWindow window;
    window.resize(400, 300);
    window.setWindowTitle("Mac Frosted Glass Window");
    window.show();

    return app.exec();
}