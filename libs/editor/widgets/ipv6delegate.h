/*
    SPDX-FileCopyrightText: 2011 Ilia Kats <ilia-kats@gmx.net>

    SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only OR LicenseRef-KDE-Accepted-GPL
*/

#ifndef IPV6DELEGATE_H
#define IPV6DELEGATE_H

#include <QWidget>
#include <QStyledItemDelegate>

#include "delegate.h"

class IpV6Delegate : public Delegate
{
    Q_OBJECT
public:
    explicit IpV6Delegate(QObject * parent = nullptr);
    ~IpV6Delegate() override;

    QWidget * createEditor(QWidget *parent, const QStyleOptionViewItem &option, const QModelIndex &index) const override;
};

#endif
