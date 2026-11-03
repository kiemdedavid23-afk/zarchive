.class public final Ls0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls0/b$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = null

.field public static final b:[Ljava/lang/String;

.field public static c:I = 0x1

.field public static d:I = 0x0

.field public static e:Ljava/lang/String; = null

.field public static f:I = 0x0

.field public static g:I = 0x0

.field public static h:I = 0x0

.field public static i:I = 0x7f0d00d2

.field public static j:I = 0x0

.field public static k:I = 0x46

.field public static l:I = 0x16

.field public static m:I = 0x1

.field public static n:I = 0x0

.field public static o:I = 0xe

.field public static final p:[I

.field public static final q:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    sput-object v0, Ls0/b;->b:[Ljava/lang/String;

    .line 5
    .line 6
    const/16 v0, 0x15

    .line 7
    .line 8
    new-array v0, v0, [I

    .line 9
    .line 10
    fill-array-data v0, :array_0

    .line 11
    .line 12
    .line 13
    sput-object v0, Ls0/b;->p:[I

    .line 14
    .line 15
    const/16 v0, 0x16

    .line 16
    .line 17
    new-array v0, v0, [I

    .line 18
    .line 19
    fill-array-data v0, :array_1

    .line 20
    .line 21
    .line 22
    sput-object v0, Ls0/b;->q:[I

    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 4
        0x7f0d0001
        0x7f0d0048
        0x7f0d002e
        0x7f0d002f
        0x7f0d0026
        0x7f0d0029
        0x7f0d001b
        0x7f0d002a
        0x7f0d0023
        0x7f0d0030
        0x7f0d0027
        0x7f0d002b
        0x7f0d002c
        0x7f0d0031
        0x7f0d001a
        0x7f0d002d
        0x7f0d0025
        0x7f0d001d
        0x7f0d0028
        0x7f0d001c
        0x7f0d0024
    .end array-data

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 4
        0x7f0d00d2
        0x7f0d00db
        0x7f0d00e3
        0x7f0d00e4
        0x7f0d00da
        0x7f0d00de
        0x7f0d00d4
        0x7f0d00df
        0x7f0d00d7
        0x7f0d00e6
        0x7f0d00dc
        0x7f0d00e0
        0x7f0d00e1
        0x7f0d00e7
        0x7f0d00d3
        0x7f0d00e2
        0x7f0d00d9
        0x7f0d00d6
        0x7f0d00dd
        0x7f0d00d5
        0x7f0d00d8
        0x7f0d00e5
    .end array-data
.end method

.method public static a()I
    .locals 2

    sget v0, Ls0/b;->f:I

    const/high16 v1, 0xf00000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public static b()I
    .locals 2

    .line 1
    const/16 v0, 0x200

    .line 2
    .line 3
    invoke-static {v0}, Ls0/b;->l(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-static {v1}, Ls0/b;->f(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    or-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    :cond_0
    const/high16 v1, 0x2000000

    .line 17
    .line 18
    invoke-static {v1}, Ls0/b;->f(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    or-int/lit8 v0, v0, 0x4

    .line 25
    .line 26
    :cond_1
    sget v1, Ls0/b;->m:I

    .line 27
    .line 28
    shl-int/lit8 v1, v1, 0x18

    .line 29
    .line 30
    or-int/2addr v0, v1

    .line 31
    return v0
.end method

.method public static c()I
    .locals 2

    .line 1
    sget v0, Ls0/b;->h:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x15

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Ls0/b;->p:[I

    .line 12
    .line 13
    aget v0, v1, v0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    const v0, 0x7f0d0001

    .line 17
    .line 18
    .line 19
    return v0
.end method

.method public static d()I
    .locals 2

    sget v0, Ls0/b;->h:I

    const v1, 0xf000

    and-int/2addr v0, v1

    return v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "/SAF"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {p0}, Lm0/d;->j(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    invoke-static {}, Lw0/c;->i()Lw0/c$a;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-object p0, p0, Lw0/c$a;->b:Ljava/lang/String;

    .line 22
    .line 23
    return-object p0
.end method

.method public static f(I)Z
    .locals 1

    sget v0, Ls0/b;->f:I

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(I)Z
    .locals 1

    sget v0, Ls0/b;->j:I

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(I)Z
    .locals 1

    sget v0, Ls0/b;->c:I

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v3, 0x1e

    .line 8
    .line 9
    if-lt v2, v3, :cond_2

    .line 10
    .line 11
    invoke-static {p0}, Lw0/f;->e(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/high16 p0, 0x4000000

    .line 19
    .line 20
    invoke-static {p0}, Ls0/b;->f(I)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    sget p0, Ls0/b;->m:I

    .line 27
    .line 28
    invoke-static {p0}, Ln0/a;->g(I)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v0, v1

    .line 36
    :goto_0
    return v0

    .line 37
    :cond_2
    :goto_1
    const/high16 p0, 0x1000000

    .line 38
    .line 39
    invoke-static {p0}, Ls0/b;->f(I)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_3

    .line 44
    .line 45
    sget p0, Ls0/b;->m:I

    .line 46
    .line 47
    invoke-static {p0}, Ln0/a;->g(I)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    move v0, v1

    .line 55
    :goto_2
    return v0
.end method

.method public static j()Z
    .locals 1

    .line 1
    const/high16 v0, 0x1000000

    .line 2
    .line 3
    invoke-static {v0}, Ls0/b;->f(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/high16 v0, 0x4000000

    .line 10
    .line 11
    invoke-static {v0}, Ls0/b;->f(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    sget v0, Ls0/b;->m:I

    .line 18
    .line 19
    invoke-static {v0}, Ln0/a;->g(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public static k(I)Z
    .locals 1

    sget v0, Ls0/b;->h:I

    and-int/lit16 v0, v0, 0xf00

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static l(I)Z
    .locals 1

    sget v0, Ls0/b;->d:I

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized m(Landroid/content/Context;ZLs0/b$a;)V
    .locals 17

    move-object/from16 v0, p2

    const-class v1, Ls0/b;

    monitor-enter v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    invoke-static {v2}, Ls0/b;->h(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 2
    monitor-exit v1

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "iHomePath"

    const/4 v5, 0x0

    .line 4
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 5
    sget-object v7, Ls0/b;->b:[Ljava/lang/String;

    aput-object v5, v7, v6

    const-string v8, ";#;"

    .line 6
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7
    invoke-static {v4}, Lu0/h;->g(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 8
    array-length v9, v8

    if-le v9, v2, :cond_1

    .line 9
    aget-object v9, v8, v6

    invoke-static {v9}, Ls0/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v6

    .line 10
    aget-object v8, v8, v2

    invoke-static {v8}, Ls0/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 11
    :cond_1
    aget-object v8, v7, v6

    if-nez v8, :cond_3

    .line 12
    invoke-static {v4}, Ls0/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    aput-object v4, v7, v6

    goto :goto_0

    .line 13
    :cond_2
    sget-object v4, Ls0/b;->b:[Ljava/lang/String;

    invoke-static {}, Lw0/c;->i()Lw0/c$a;

    move-result-object v7

    iget-object v7, v7, Lw0/c$a;->b:Ljava/lang/String;

    aput-object v7, v4, v2

    aput-object v7, v4, v6

    :cond_3
    :goto_0
    const-string v4, "iUseArcPath"

    .line 14
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "iArcPath"

    .line 15
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Ls0/b;->a:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 16
    invoke-static {v4}, Lm0/d;->h(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 17
    sput-object v5, Ls0/b;->a:Ljava/lang/String;

    .line 18
    :cond_4
    sget-object v4, Ls0/b;->a:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lw0/c;->i()Lw0/c$a;

    move-result-object v7

    iget-object v7, v7, Lw0/c$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/archives"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Ls0/b;->a:Ljava/lang/String;

    goto :goto_1

    .line 20
    :cond_5
    sput-object v5, Ls0/b;->a:Ljava/lang/String;

    .line 21
    :cond_6
    :goto_1
    sget v4, Ls0/b;->d:I

    .line 22
    sput v6, Ls0/b;->d:I

    .line 23
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v8, "iFavoBar"

    .line 24
    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_7

    sget v8, Ls0/b;->d:I

    or-int/2addr v8, v9

    sput v8, Ls0/b;->d:I

    :cond_7
    const-string v8, "iFloatButon"

    .line 25
    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_8

    sget v8, Ls0/b;->d:I

    or-int/lit8 v8, v8, 0x8

    sput v8, Ls0/b;->d:I

    :cond_8
    const-string v8, "iTransparentFAB"

    .line 26
    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/16 v10, 0x10

    if-eqz v8, :cond_9

    sget v8, Ls0/b;->d:I

    or-int/2addr v8, v10

    sput v8, Ls0/b;->d:I

    :cond_9
    const-string v8, "iTwoTab"

    .line 27
    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/16 v11, 0x80

    if-eqz v8, :cond_a

    sget v8, Ls0/b;->d:I

    or-int/2addr v8, v11

    sput v8, Ls0/b;->d:I

    :cond_a
    const-string v8, "iFMASquareThumb"

    .line 28
    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_b

    sget v8, Ls0/b;->d:I

    or-int/lit8 v8, v8, 0x4

    sput v8, Ls0/b;->d:I

    :cond_b
    const-string v8, "iGUIAnimation"

    .line 29
    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_c

    sget v8, Ls0/b;->d:I

    or-int/lit8 v8, v8, 0x20

    sput v8, Ls0/b;->d:I

    :cond_c
    const-string v8, "iGUIConfirmCancel"

    .line 30
    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_d

    sget v8, Ls0/b;->d:I

    or-int/lit16 v8, v8, 0x100

    sput v8, Ls0/b;->d:I

    :cond_d
    const-string v8, "iGUIConfirmRewrite"

    .line 31
    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_e

    sget v8, Ls0/b;->d:I

    or-int/lit16 v8, v8, 0x200

    sput v8, Ls0/b;->d:I

    :cond_e
    const-string v8, "iGUIRemoveAfterCompress"

    .line 32
    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_f

    sget v8, Ls0/b;->d:I

    or-int/lit16 v8, v8, 0x400

    sput v8, Ls0/b;->d:I

    :cond_f
    const-string v8, "iGUIFastScroll"

    .line 33
    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_10

    sget v8, Ls0/b;->d:I

    const v12, 0x8000

    or-int/2addr v8, v12

    sput v8, Ls0/b;->d:I

    :cond_10
    const-string v8, "iGUIInterectivPast"

    .line 34
    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/16 v12, 0x40

    if-eqz v8, :cond_11

    sget v8, Ls0/b;->d:I

    or-int/2addr v8, v12

    sput v8, Ls0/b;->d:I

    :cond_11
    const-string v8, "0"

    const-string v13, "iOpenArchive"

    .line 35
    invoke-interface {v3, v13, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    sget v8, Ls0/b;->d:I

    or-int/lit16 v8, v8, 0x800

    sput v8, Ls0/b;->d:I

    :cond_12
    const-string v8, "0"

    const-string v13, "iOpenFile"

    .line 36
    invoke-interface {v3, v13, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    sget v8, Ls0/b;->d:I

    or-int/lit16 v8, v8, 0x1000

    sput v8, Ls0/b;->d:I

    .line 37
    :cond_13
    sget v8, Ls0/b;->d:I

    const-string v13, "iGUIBackground"

    invoke-interface {v3, v13, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    invoke-static {v14, v13}, Lb/d;->i0(ILjava/lang/String;)I

    move-result v13

    shl-int/2addr v13, v10

    const/high16 v15, 0xf0000

    and-int/2addr v13, v15

    or-int/2addr v8, v13

    sput v8, Ls0/b;->d:I

    const-string v13, "iActionOpenArc"

    .line 38
    invoke-interface {v3, v13, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lb/d;->i0(ILjava/lang/String;)I

    move-result v13

    shl-int/lit8 v13, v13, 0x14

    const/high16 v16, 0x300000

    and-int v13, v13, v16

    or-int/2addr v8, v13

    sput v8, Ls0/b;->d:I

    const-string v8, "iBackType"

    .line 39
    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lb/d;->i0(ILjava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_14

    .line 40
    sget v8, Ls0/b;->d:I

    or-int/lit16 v8, v8, 0x4000

    sput v8, Ls0/b;->d:I

    goto :goto_2

    :cond_14
    if-nez v8, :cond_15

    .line 41
    sget v8, Ls0/b;->d:I

    or-int/lit16 v8, v8, 0x2000

    sput v8, Ls0/b;->d:I

    :cond_15
    :goto_2
    if-eqz v0, :cond_17

    .line 42
    iget-boolean v8, v0, Ls0/b$a;->a:Z

    if-nez v8, :cond_17

    sget v8, Ls0/b;->d:I

    const v13, 0xf809b

    and-int/2addr v4, v13

    and-int/2addr v8, v13

    if-eq v4, v8, :cond_16

    move v4, v2

    goto :goto_3

    :cond_16
    move v4, v6

    :goto_3
    if-eqz v4, :cond_17

    iput-boolean v2, v0, Ls0/b$a;->a:Z

    .line 43
    :cond_17
    sget-object v4, Ls0/b;->e:Ljava/lang/String;

    const-string v8, "iLanguage"

    .line 44
    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Ls0/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 45
    iget-boolean v13, v0, Ls0/b$a;->a:Z

    if-nez v13, :cond_18

    invoke-static {v4, v8}, Lu0/h;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 46
    iput-boolean v2, v0, Ls0/b$a;->a:Z

    .line 47
    :cond_18
    sget v4, Ls0/b;->h:I

    const-string v8, "iActionbarColorN"

    .line 48
    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Ls0/b;->h:I

    const-string v8, "iFSIconTheme"

    .line 49
    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lb/d;->i0(ILjava/lang/String;)I

    move-result v8

    .line 50
    sget v13, Ls0/b;->h:I

    add-int/2addr v8, v2

    shl-int/lit8 v8, v8, 0xc

    const v16, 0xf000

    and-int v8, v8, v16

    or-int/2addr v8, v13

    sput v8, Ls0/b;->h:I

    const-string v8, "iTheme"

    .line 51
    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lb/d;->i0(ILjava/lang/String;)I

    move-result v8

    add-int/2addr v8, v2

    const/4 v13, 0x6

    if-eq v8, v13, :cond_19

    move v8, v2

    .line 52
    :cond_19
    sget v13, Ls0/b;->h:I

    shl-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xf00

    or-int/2addr v8, v13

    sput v8, Ls0/b;->h:I

    if-eqz v0, :cond_1a

    .line 53
    iget-boolean v13, v0, Ls0/b$a;->a:Z

    if-nez v13, :cond_1a

    if-eq v4, v8, :cond_1a

    iput-boolean v2, v0, Ls0/b$a;->a:Z

    .line 54
    :cond_1a
    sget v4, Ls0/b;->i:I

    .line 55
    sget-object v8, Ls0/b;->q:[I

    const-string v13, "iFolderColorN"

    invoke-interface {v3, v13, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    aget v8, v8, v13

    sput v8, Ls0/b;->i:I

    if-eqz v0, :cond_1b

    if-eq v4, v8, :cond_1b

    .line 56
    iput-boolean v2, v0, Ls0/b$a;->a:Z

    .line 57
    :cond_1b
    sget v4, Ls0/b;->f:I

    .line 58
    sput v6, Ls0/b;->f:I

    const-string v8, "iExtIgnoreRAMLimit"

    .line 59
    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1c

    sget v8, Ls0/b;->f:I

    or-int/2addr v8, v2

    sput v8, Ls0/b;->f:I

    :cond_1c
    const-string v8, "i7ZUseSolidMode"

    .line 60
    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1d

    sget v8, Ls0/b;->f:I

    or-int/2addr v8, v9

    sput v8, Ls0/b;->f:I

    :cond_1d
    const-string v8, "i7ZUsePipe"

    .line 61
    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1e

    sget v8, Ls0/b;->f:I

    or-int/lit8 v8, v8, 0x4

    sput v8, Ls0/b;->f:I

    :cond_1e
    const-string v8, "i7ZUseDirectOpen"

    .line 62
    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1f

    sget v8, Ls0/b;->f:I

    or-int/lit8 v8, v8, 0x8

    sput v8, Ls0/b;->f:I

    :cond_1f
    const-string v8, "i7ZCompressionMethod"

    .line 63
    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 64
    sget v13, Ls0/b;->f:I

    if-nez v8, :cond_20

    move v8, v12

    goto :goto_4

    :cond_20
    invoke-static {v9, v8}, Lb/d;->i0(ILjava/lang/String;)I

    move-result v8

    shl-int v8, v2, v8

    shl-int/lit8 v8, v8, 0x4

    :goto_4
    or-int/2addr v8, v13

    sput v8, Ls0/b;->f:I

    const-string v9, "iLavel7z"

    .line 65
    invoke-interface {v3, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Lb/d;->i0(ILjava/lang/String;)I

    move-result v9

    shl-int/lit8 v9, v9, 0xc

    and-int v9, v9, v16

    or-int/2addr v8, v9

    sput v8, Ls0/b;->f:I

    const-string v9, "iLavelZIP"

    .line 66
    invoke-interface {v3, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Lb/d;->i0(ILjava/lang/String;)I

    move-result v9

    shl-int/2addr v9, v10

    and-int/2addr v9, v15

    or-int/2addr v8, v9

    sput v8, Ls0/b;->f:I

    const-string v9, "iCPUCoreN"

    .line 67
    invoke-interface {v3, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lb/d;->i0(ILjava/lang/String;)I

    move-result v9

    shl-int/lit8 v9, v9, 0x14

    const/high16 v13, 0xf00000

    and-int/2addr v9, v13

    or-int/2addr v8, v9

    sput v8, Ls0/b;->f:I

    const-string v8, "bRoot"

    .line 68
    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/high16 v9, 0x1000000

    if-eqz v8, :cond_21

    .line 69
    sget v8, Ls0/b;->f:I

    or-int/2addr v8, v9

    sput v8, Ls0/b;->f:I

    const-string v8, "bFixSEContext"

    .line 70
    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_21

    sget v8, Ls0/b;->f:I

    const/high16 v13, 0x2000000

    or-int/2addr v8, v13

    sput v8, Ls0/b;->f:I

    :cond_21
    const/16 v8, 0x1e

    if-lt v7, v8, :cond_22

    const-string v8, "bRootAndroidDir"

    .line 71
    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_22

    sget v8, Ls0/b;->f:I

    const/high16 v13, 0x4000000

    or-int/2addr v8, v13

    sput v8, Ls0/b;->f:I

    :cond_22
    const-string v8, "iRootType"

    .line 72
    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lb/d;->i0(ILjava/lang/String;)I

    move-result v8

    add-int/2addr v8, v2

    sput v8, Ls0/b;->m:I

    if-eqz v0, :cond_24

    .line 73
    sget v8, Ls0/b;->f:I

    and-int v13, v4, v9

    and-int/2addr v8, v9

    if-eq v13, v8, :cond_23

    move v8, v2

    goto :goto_5

    :cond_23
    move v8, v6

    :goto_5
    if-eqz v8, :cond_24

    iput-boolean v2, v0, Ls0/b$a;->d:Z

    :cond_24
    if-eqz v0, :cond_26

    .line 74
    sget v8, Ls0/b;->f:I

    and-int/lit8 v4, v4, 0x4

    and-int/lit8 v8, v8, 0x4

    if-eq v4, v8, :cond_25

    move v4, v2

    goto :goto_6

    :cond_25
    move v4, v6

    :goto_6
    if-eqz v4, :cond_26

    iput-boolean v2, v0, Ls0/b$a;->e:Z

    :cond_26
    const-string v4, "iOEMCP"

    .line 75
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lb/d;->i0(ILjava/lang/String;)I

    move-result v4

    const/16 v8, 0x2bc

    if-gt v4, v8, :cond_27

    .line 76
    invoke-static/range {p0 .. p0}, Lb/d;->l(Landroid/content/Context;)I

    move-result v4

    .line 77
    :cond_27
    sget v8, Ls0/b;->g:I

    if-eq v8, v4, :cond_28

    .line 78
    sput v4, Ls0/b;->g:I

    if-eqz v0, :cond_28

    .line 79
    iput-boolean v2, v0, Ls0/b$a;->e:Z

    .line 80
    :cond_28
    sget v4, Ls0/b;->j:I

    .line 81
    sput v6, Ls0/b;->j:I

    const-string v8, "iFMFolderUpItem"

    .line 82
    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_29

    sget v8, Ls0/b;->j:I

    or-int/2addr v8, v2

    sput v8, Ls0/b;->j:I

    :cond_29
    const-string v8, "iFMHidenFile"

    .line 83
    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2a

    sget v8, Ls0/b;->j:I

    or-int/lit8 v8, v8, 0x4

    sput v8, Ls0/b;->j:I

    :cond_2a
    const-string v8, "iFMSortDesc"

    .line 84
    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2b

    sget v8, Ls0/b;->j:I

    or-int/lit8 v8, v8, 0x8

    sput v8, Ls0/b;->j:I

    .line 85
    :cond_2b
    sget v8, Ls0/b;->j:I

    const-string v13, "iFMSortType"

    invoke-interface {v3, v13, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lb/d;->i0(ILjava/lang/String;)I

    move-result v13

    shl-int/lit8 v13, v13, 0x4

    and-int/lit16 v13, v13, 0xf0

    or-int/2addr v8, v13

    sput v8, Ls0/b;->j:I

    const-string v13, "iListMode"

    .line 86
    invoke-interface {v3, v13, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lb/d;->i0(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v5, v2

    shl-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xf00

    or-int/2addr v5, v8

    sput v5, Ls0/b;->j:I

    const-string v5, "iFMFileSize"

    .line 87
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2c

    sget v5, Ls0/b;->j:I

    or-int/lit16 v5, v5, 0x1000

    sput v5, Ls0/b;->j:I

    :cond_2c
    const-string v5, "iFMFileLastMod"

    .line 88
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2d

    sget v5, Ls0/b;->j:I

    or-int/lit16 v5, v5, 0x2000

    sput v5, Ls0/b;->j:I

    :cond_2d
    const-string v5, "iFMFileLastModTime"

    .line 89
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2e

    sget v5, Ls0/b;->j:I

    or-int/lit16 v5, v5, 0x4000

    sput v5, Ls0/b;->j:I

    :cond_2e
    const-string v5, "iFMImgThumd"

    .line 90
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2f

    sget v5, Ls0/b;->j:I

    const/high16 v8, 0x10000

    or-int/2addr v5, v8

    sput v5, Ls0/b;->j:I

    :cond_2f
    const-string v5, "iFMPdfThumb"

    .line 91
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_30

    sget v5, Ls0/b;->j:I

    const/high16 v8, 0x40000

    or-int/2addr v5, v8

    sput v5, Ls0/b;->j:I

    :cond_30
    const-string v5, "iFMVideoThumb"

    .line 92
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_31

    sget v5, Ls0/b;->j:I

    const/high16 v8, 0x80000

    or-int/2addr v5, v8

    sput v5, Ls0/b;->j:I

    :cond_31
    const-string v5, "iFMAudioThumb"

    .line 93
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_32

    sget v5, Ls0/b;->j:I

    const/high16 v8, 0x100000

    or-int/2addr v5, v8

    sput v5, Ls0/b;->j:I

    :cond_32
    const-string v5, "iFMApkIcon"

    .line 94
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_33

    sget v5, Ls0/b;->j:I

    const/high16 v8, 0x20000

    or-int/2addr v5, v8

    sput v5, Ls0/b;->j:I

    :cond_33
    const-string v5, "iFMShowArchiveThumb"

    .line 95
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_34

    sget v5, Ls0/b;->j:I

    const/high16 v8, 0x200000

    or-int/2addr v5, v8

    sput v5, Ls0/b;->j:I

    :cond_34
    if-eqz v0, :cond_35

    .line 96
    sget v5, Ls0/b;->j:I

    if-eq v4, v5, :cond_35

    .line 97
    iput-boolean v2, v0, Ls0/b$a;->b:Z

    and-int/lit16 v4, v4, 0xffc

    and-int/lit16 v5, v5, 0xffc

    if-eq v4, v5, :cond_35

    .line 98
    iput-boolean v2, v0, Ls0/b$a;->c:Z

    .line 99
    :cond_35
    sget v4, Ls0/b;->l:I

    .line 100
    sget v5, Ls0/b;->k:I

    const-string v8, "iFMItemFontSize"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v13, -0x1

    .line 101
    :try_start_2
    invoke-interface {v3, v8, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-gez v8, :cond_36

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f050011

    .line 103
    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catch_0
    move v8, v10

    .line 104
    :cond_36
    :goto_7
    :try_start_3
    sput v8, Ls0/b;->l:I

    const-string v8, "iFMItemSize2"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    :try_start_4
    invoke-interface {v3, v8, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-gez v8, :cond_37

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f05000e

    .line 107
    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :catch_1
    const/16 v8, 0x30

    .line 108
    :try_start_5
    invoke-static {v8}, Ly0/c;->a(I)I

    move-result v8

    .line 109
    :cond_37
    :goto_8
    sput v8, Ls0/b;->k:I

    if-eqz v0, :cond_39

    if-ne v5, v8, :cond_38

    .line 110
    sget v5, Ls0/b;->l:I

    if-eq v4, v5, :cond_39

    :cond_38
    iput-boolean v2, v0, Ls0/b$a;->b:Z

    .line 111
    :cond_39
    sput v12, Ls0/b;->c:I

    const-string v0, "iShowHelp"

    .line 112
    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v14, :cond_3a

    sget v0, Ls0/b;->c:I

    or-int/2addr v0, v10

    sput v0, Ls0/b;->c:I

    :cond_3a
    const-string v0, "bShowPrivatePolicy"

    .line 113
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3b

    sget v0, Ls0/b;->c:I

    or-int/2addr v0, v11

    sput v0, Ls0/b;->c:I

    :cond_3b
    const-string v0, "bShowAndroidSub"

    .line 114
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget v0, Ls0/b;->c:I

    or-int/lit16 v0, v0, 0x100

    sput v0, Ls0/b;->c:I

    :cond_3c
    const-string v0, "bShowRootWarning"

    .line 115
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget v0, Ls0/b;->c:I

    or-int/lit8 v0, v0, 0x20

    sput v0, Ls0/b;->c:I

    goto :goto_9

    .line 116
    :cond_3d
    invoke-static {v9}, Ls0/b;->f(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 117
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "bShowRootWarning"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3e
    :goto_9
    const-string v0, "iEditorStyle"

    .line 118
    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ls0/b;->n:I

    const-string v0, "iEditorFontSize"

    const/16 v4, 0xe

    .line 119
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ls0/b;->o:I

    const-string v0, "iAppVersion"

    .line 120
    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v4, 0x18aac

    if-ge v0, v4, :cond_4a

    .line 121
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const/16 v8, 0x18

    if-nez v0, :cond_42

    const/16 v12, 0x1c

    if-lt v7, v12, :cond_3f

    const-string v12, "i7ZUseDirectOpen"

    .line 122
    invoke-interface {v5, v12, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 123
    sget v12, Ls0/b;->f:I

    or-int/lit8 v12, v12, 0x8

    sput v12, Ls0/b;->f:I

    .line 124
    :cond_3f
    invoke-static {}, Lu0/b;->d()Z

    move-result v12

    if-lt v7, v8, :cond_40

    if-eqz v12, :cond_41

    :cond_40
    const-string v14, "iFMAudioThumb"

    .line 125
    invoke-interface {v5, v14, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 126
    sget v14, Ls0/b;->j:I

    const v15, -0x100001

    and-int/2addr v14, v15

    sput v14, Ls0/b;->j:I

    const-string v14, "iGUIAnimation"

    .line 127
    invoke-interface {v5, v14, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 128
    sget v14, Ls0/b;->d:I

    and-int/lit8 v14, v14, -0x21

    sput v14, Ls0/b;->d:I

    :cond_41
    if-eqz v12, :cond_42

    const-string v12, "iTheme"

    const-string v14, "5"

    .line 129
    invoke-interface {v5, v12, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v12, "iFSIconTheme"

    const-string v14, "1"

    .line 130
    invoke-interface {v5, v12, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    sget v12, Ls0/b;->h:I

    const v14, -0xff01

    and-int/2addr v12, v14

    or-int/lit16 v12, v12, 0x2600

    .line 132
    sput v12, Ls0/b;->h:I

    const-string v12, "iGUIAnimation"

    .line 133
    invoke-interface {v5, v12, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 134
    sget v12, Ls0/b;->d:I

    and-int/lit8 v12, v12, -0x21

    sput v12, Ls0/b;->d:I

    :cond_42
    const/16 v12, 0x2710

    if-ge v0, v12, :cond_44

    const/16 v12, 0x1d

    if-lt v7, v12, :cond_43

    goto :goto_a

    :cond_43
    if-ge v7, v8, :cond_44

    const-string v8, "iGUIFastScroll"

    .line 135
    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 136
    sget v8, Ls0/b;->d:I

    const v12, -0x8001

    and-int/2addr v8, v12

    sput v8, Ls0/b;->d:I

    :cond_44
    :goto_a
    const/16 v8, 0x2904

    if-ge v0, v8, :cond_45

    .line 137
    sget v8, Ls0/b;->c:I

    invoke-static {v8, v10}, Lb/d;->K(II)Z

    move-result v8

    if-nez v8, :cond_45

    sget v8, Ls0/b;->c:I

    invoke-static {v8, v11}, Lb/d;->K(II)Z

    move-result v8

    if-eqz v8, :cond_45

    const-string v8, "bShowPrivatePolicy"

    .line 138
    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    sget v8, Ls0/b;->c:I

    and-int/lit16 v8, v8, -0x81

    sput v8, Ls0/b;->c:I

    :cond_45
    const/16 v8, 0x29cc

    if-ge v0, v8, :cond_46

    .line 140
    invoke-static {v9}, Ls0/b;->f(I)Z

    move-result v8

    if-eqz v8, :cond_46

    invoke-static {v2}, Ln0/a;->g(I)Z

    move-result v8

    if-nez v8, :cond_46

    const-string v8, "bRoot"

    .line 141
    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 142
    sget v6, Ls0/b;->f:I

    const v8, -0x1000001

    and-int/2addr v6, v8

    sput v6, Ls0/b;->f:I

    :cond_46
    const/16 v6, 0x2a30

    if-ge v0, v6, :cond_49

    const/16 v6, 0x1f

    if-lt v7, v6, :cond_49

    const-string v6, "iActionbarColorN"

    const/16 v7, 0x3e8

    .line 143
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_47

    goto :goto_b

    :cond_47
    if-lez v0, :cond_48

    const/16 v3, 0x2968

    if-ge v0, v3, :cond_48

    .line 144
    sget v0, Ls0/b;->h:I

    and-int/lit16 v0, v0, 0xff

    if-lez v0, :cond_48

    add-int/2addr v2, v0

    goto :goto_b

    :cond_48
    move v2, v13

    :goto_b
    if-eq v2, v13, :cond_49

    const-string v0, "iActionbarColorN"

    .line 145
    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 146
    sget v0, Ls0/b;->h:I

    and-int/lit16 v0, v0, -0x100

    or-int/2addr v0, v2

    sput v0, Ls0/b;->h:I

    :cond_49
    const-string v0, "iAppVersion"

    .line 147
    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 149
    :cond_4a
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static n(Landroid/content/Context;IIZZ)V
    .locals 1

    .line 1
    invoke-static {p0}, Lru/zdevs/zarchiver/ZApp;->c(Landroid/content/Context;)Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget v0, Ls0/b;->n:I

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    sput p1, Ls0/b;->n:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    and-int/lit8 p1, v0, 0xf

    .line 13
    .line 14
    sput p1, Ls0/b;->n:I

    .line 15
    .line 16
    :goto_0
    if-eqz p3, :cond_1

    .line 17
    .line 18
    sget p1, Ls0/b;->n:I

    .line 19
    .line 20
    or-int/lit8 p1, p1, 0x10

    .line 21
    .line 22
    sput p1, Ls0/b;->n:I

    .line 23
    .line 24
    :cond_1
    if-eqz p4, :cond_2

    .line 25
    .line 26
    sget p1, Ls0/b;->n:I

    .line 27
    .line 28
    or-int/lit8 p1, p1, 0x20

    .line 29
    .line 30
    sput p1, Ls0/b;->n:I

    .line 31
    .line 32
    :cond_2
    sget p1, Ls0/b;->n:I

    .line 33
    .line 34
    and-int/lit8 p3, v0, 0x40

    .line 35
    .line 36
    or-int/2addr p1, p3

    .line 37
    sput p1, Ls0/b;->n:I

    .line 38
    .line 39
    if-ltz p2, :cond_3

    .line 40
    .line 41
    sput p2, Ls0/b;->o:I

    .line 42
    .line 43
    :cond_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "iEditorStyle"

    .line 52
    .line 53
    sget p2, Ls0/b;->n:I

    .line 54
    .line 55
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 56
    .line 57
    .line 58
    const-string p1, "iEditorFontSize"

    .line 59
    .line 60
    sget p2, Ls0/b;->o:I

    .line 61
    .line 62
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    .line 65
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static o(Landroid/content/Context;I)V
    .locals 2

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-eq p1, v0, :cond_4

    .line 4
    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/16 v0, 0x10

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    const-string v0, "iShowHelp"

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v0, 0x80

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    const-string v0, "bShowPrivatePolicy"

    .line 32
    .line 33
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/16 v0, 0x20

    .line 38
    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    const-string v0, "bShowRootWarning"

    .line 42
    .line 43
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/16 v0, 0x100

    .line 48
    .line 49
    if-ne p1, v0, :cond_3

    .line 50
    .line 51
    const-string v0, "bShowAndroidSub"

    .line 52
    .line 53
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    .line 58
    .line 59
    :cond_4
    sget p0, Ls0/b;->c:I

    .line 60
    .line 61
    not-int p1, p1

    .line 62
    and-int/2addr p0, p1

    .line 63
    sput p0, Ls0/b;->c:I

    .line 64
    .line 65
    return-void
.end method
