#ifndef GLASSWINDOW_H
#define GLASSWINDOW_H

#include <QWidget>

class GlassWindow : public QWidget
{
    Q_OBJECT
public:
    explicit GlassWindow(QWidget *parent = nullptr);
    ~GlassWindow() override;

protected:
    void showEvent(QShowEvent *event) override;

private:
    void initVisualEffectView();
};

#endif // GLASSWINDOW_H