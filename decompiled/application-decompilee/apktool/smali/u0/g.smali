.class public final Lu0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lru/zdevs/zarchiver/ZApp;Ljava/util/ArrayList;)V
    .locals 14

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    sget v1, Ls0/b;->i:I

    .line 28
    .line 29
    const/4 v9, 0x1

    .line 30
    invoke-virtual {v8, v1, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x18

    .line 34
    .line 35
    invoke-static {v1}, Ly0/c;->a(I)I

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    new-instance v11, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    move-object v12, v1

    .line 59
    check-cast v12, Lb0/e;

    .line 60
    .line 61
    iget-object v1, v12, Lb0/e;->b:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v1}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    new-instance v13, Landroid/content/Intent;

    .line 71
    .line 72
    const-class v1, Lru/zdevs/zarchiver/ZArchiver;

    .line 73
    .line 74
    invoke-direct {v13, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .line 76
    .line 77
    const-string v1, "android.intent.action.VIEW"

    .line 78
    .line 79
    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    const-string v1, "ZA_SHORTCUT"

    .line 83
    .line 84
    invoke-virtual {v13, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    iget-object v1, v12, Lb0/e;->c:Lg0/h;

    .line 88
    .line 89
    invoke-virtual {v1}, Lg0/h;->r()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "shrtct"

    .line 94
    .line 95
    invoke-virtual {v13, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    invoke-static {}, Ls0/b;->d()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    iget v2, v12, Lb0/e;->a:I

    .line 103
    .line 104
    invoke-static {v1, v2}, Ly0/b;->b(II)I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    const/4 v6, 0x0

    .line 109
    move-object v1, v7

    .line 110
    move-object v2, v8

    .line 111
    move v4, v10

    .line 112
    move v5, v10

    .line 113
    invoke-static/range {v1 .. v6}, Lp0/b;->e(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IIII)Landroid/graphics/Bitmap;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-ne v2, v9, :cond_4

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    .line 125
    .line 126
    iget-object v3, v12, Lb0/e;->b:Ljava/lang/String;

    .line 127
    .line 128
    invoke-direct {v2, p0, v3}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v3, v12, Lb0/e;->b:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1, v13}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    const/4 v2, 0x4

    .line 161
    if-lt v1, v2, :cond_2

    .line 162
    .line 163
    :cond_5
    :try_start_0
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->removeAllDynamicShortcuts()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v11}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    .line 169
    :catch_0
    return-void
.end method
