#ifndef USBTHREAD_H
#define USBTHREAD_H

#include <QObject>

class UsbThread : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool stillRuning READ stillRuning WRITE setStillRuning NOTIFY stillRuningChanged)

    bool m_stillRuning;

public:
    explicit UsbThread(QObject *parent = nullptr);


bool stillRuning() const
{
    return m_stillRuning;
}

public slots:
    void setStillRuning(bool stillRuning)
    {
        if (m_stillRuning == stillRuning)
            return;

        m_stillRuning = stillRuning;
        emit stillRuningChanged(m_stillRuning);
    }
    void Procces();



signals:
    void stillRuningChanged(bool stillRuning);
    void finished();

};

#endif // USBTHREAD_H
