.class public final Lu0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 5
    .line 6
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "get"

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    new-array v5, v4, [Ljava/lang/Class;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    aput-object v0, v5, v6

    .line 17
    .line 18
    const/4 v7, 0x1

    .line 19
    aput-object v0, v5, v7

    .line 20
    .line 21
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-array v3, v4, [Ljava/lang/Object;

    .line 26
    .line 27
    aput-object p0, v3, v6

    .line 28
    .line 29
    aput-object v1, v3, v7

    .line 30
    .line 31
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    return-object p0

    .line 38
    :catch_0
    return-object v1
.end method

.method public static b(Landroid/content/res/Configuration;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lu0/b;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 15
    .line 16
    and-int/lit8 p0, p0, 0xf

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    if-lt p0, v0, :cond_1

    .line 20
    .line 21
    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    const-string v0, "gta"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const-string v0, "gts"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    const-string v0, "q"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    const-string v0, "f2q"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_1

    .line 56
    .line 57
    :cond_0
    const/4 v2, 0x1

    .line 58
    :cond_1
    return v2
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-lt v0, v1, :cond_3

    .line 8
    .line 9
    const-string v0, "qemu.hw.mainkeys"

    .line 10
    .line 11
    invoke-static {v0}, Lu0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "1"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    const-string v1, "0"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    return v3

    .line 33
    :cond_1
    if-eqz p0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "bool"

    .line 40
    .line 41
    const-string v2, "android"

    .line 42
    .line 43
    const-string v4, "config_showNavigationBar"

    .line 44
    .line 45
    invoke-virtual {v0, v4, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-lez v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :cond_2
    return v3

    .line 61
    :cond_3
    :try_start_0
    const-string p0, "android.os.ServiceManager"

    .line 62
    .line 63
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string v0, "getService"

    .line 68
    .line 69
    new-array v1, v3, [Ljava/lang/Class;

    .line 70
    .line 71
    const-class v4, Ljava/lang/String;

    .line 72
    .line 73
    aput-object v4, v1, v2

    .line 74
    .line 75
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-array v1, v3, [Ljava/lang/Object;

    .line 80
    .line 81
    const-string v4, "window"

    .line 82
    .line 83
    aput-object v4, v1, v2

    .line 84
    .line 85
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Landroid/os/IBinder;

    .line 90
    .line 91
    const-string v0, "android.view.IWindowManager$Stub"

    .line 92
    .line 93
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "asInterface"

    .line 98
    .line 99
    new-array v4, v3, [Ljava/lang/Class;

    .line 100
    .line 101
    const-class v5, Landroid/os/IBinder;

    .line 102
    .line 103
    aput-object v5, v4, v2

    .line 104
    .line 105
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    new-array v4, v3, [Ljava/lang/Object;

    .line 110
    .line 111
    aput-object p0, v4, v2

    .line 112
    .line 113
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    if-nez p0, :cond_4

    .line 118
    .line 119
    return v3

    .line 120
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v1, "hasNavigationBar"

    .line 125
    .line 126
    new-array v4, v2, [Ljava/lang/Class;

    .line 127
    .line 128
    invoke-static {v0, v1, v4}, Lb/d;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-nez v0, :cond_5

    .line 133
    .line 134
    return v3

    .line 135
    :cond_5
    new-array v1, v2, [Ljava/lang/Object;

    .line 136
    .line 137
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    check-cast p0, Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 144
    .line 145
    .line 146
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return p0

    .line 148
    :catch_0
    return v3
.end method

.method public static d()Z
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->e()Lru/zdevs/zarchiver/ZApp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "window"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/WindowManager;

    .line 12
    .line 13
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const/high16 v0, 0x42700000    # 60.0f

    .line 23
    .line 24
    :goto_0
    const/high16 v1, 0x41a00000    # 20.0f

    .line 25
    .line 26
    cmpg-float v0, v0, v1

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    if-gez v0, :cond_0

    .line 30
    .line 31
    return v1

    .line 32
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "onyx"

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    const-string v3, "kobo"

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    :cond_1
    return v1

    .line 57
    :cond_2
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v3, "boyue"

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_3

    .line 78
    .line 79
    const-string v2, "tolino"

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    :cond_3
    return v1

    .line 88
    :cond_4
    const/4 v0, 0x0

    .line 89
    return v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public static f()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lu0/h;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "samsung"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ls0/b;->l(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v3, 0x18

    .line 17
    .line 18
    if-lt v1, v3, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget p0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 25
    .line 26
    const/16 v1, 0x168

    .line 27
    .line 28
    if-ge p0, v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v0, v2

    .line 32
    :goto_0
    return v0

    .line 33
    :cond_2
    const-string v1, "max_action_buttons"

    .line 34
    .line 35
    const-string v3, "integer"

    .line 36
    .line 37
    const-string v4, "android"

    .line 38
    .line 39
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 46
    .line 47
    .line 48
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    const/4 v1, 0x2

    .line 50
    if-gt p0, v1, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move v0, v2

    .line 54
    :goto_1
    return v0

    .line 55
    :catch_0
    :cond_4
    return v2
.end method
