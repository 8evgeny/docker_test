#include <QApplication>
#include <QLabel>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QLabel label("Qt on Khadas Edge2");
    label.resize(500, 120);
    label.show();

    return app.exec();
}
