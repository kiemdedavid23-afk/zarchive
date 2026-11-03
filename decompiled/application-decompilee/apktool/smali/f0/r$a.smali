.class public final Lf0/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf0/r;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf0/r;


# direct methods
.method public constructor <init>(Lf0/r;)V
    .locals 0

    iput-object p1, p0, Lf0/r$a;->a:Lf0/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    const-string p1, "http://zdevs.ru/za/"

    .line 2
    .line 3
    iget-object v0, p0, Lf0/r$a;->a:Lf0/r;

    .line 4
    .line 5
    iget-object v0, v0, Lf0/r;->a:Lf0/s;

    .line 6
    .line 7
    iget v1, v0, Lf0/s;->i:I

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    const-string v3, "sd_permissions.html#"

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    const-string v0, "files12"

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v2, 0x6

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    const-string v3, "android_data_obb.html"

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget v0, v0, Lf0/s;->h:I

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    if-eq v0, v1, :cond_5

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    .line 35
    const/16 v2, 0x21

    .line 36
    .line 37
    if-lt v1, v2, :cond_4

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-ne v0, v1, :cond_3

    .line 41
    .line 42
    const-string v0, "and13obb"

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const-string v0, "and13data"

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    const-string v0, "and11data"

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_5
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 v1, 0x1e

    .line 54
    .line 55
    if-lt v0, v1, :cond_6

    .line 56
    .line 57
    const-string v0, "and11"

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_6
    const/16 v1, 0x1d

    .line 61
    .line 62
    if-ne v0, v1, :cond_7

    .line 63
    .line 64
    const-string v0, "and10"

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_7
    const/16 v1, 0x1a

    .line 68
    .line 69
    if-lt v0, v1, :cond_8

    .line 70
    .line 71
    const-string v0, "and7"

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_8
    const-string v0, "and5"

    .line 75
    .line 76
    :goto_1
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZArchiver;->z()Lru/zdevs/zarchiver/ZArchiver;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_9

    .line 81
    .line 82
    new-instance v2, Landroid/content/Intent;

    .line 83
    .line 84
    const-string v4, "android.intent.action.VIEW"

    .line 85
    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {v2, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v1, v2}, Lg1/h;->d(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    :cond_9
    :goto_2
    return-void
.end method
