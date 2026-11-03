.class public final Lu0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    .line 6
    const-string p1, "ZA"

    .line 7
    .line 8
    :cond_1
    const-string v0, "clipboard"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/content/ClipboardManager;

    .line 15
    .line 16
    if-nez p0, :cond_2

    .line 17
    .line 18
    return-void

    .line 19
    :cond_2
    :try_start_0
    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 24
    .line 25
    .line 26
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 p1, 0x21

    .line 29
    .line 30
    if-ge p0, p1, :cond_3

    .line 31
    .line 32
    const p0, 0x7f0c00df

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lru/zdevs/zarchiver/ZApp;->i(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    const-string p0, "SecurityException"

    .line 40
    .line 41
    invoke-static {p0}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_0
    return-void
.end method
