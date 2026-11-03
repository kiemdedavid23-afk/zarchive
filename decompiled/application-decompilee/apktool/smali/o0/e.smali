.class public final Lo0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/e$a;
    }
.end annotation


# direct methods
.method public static a(Ln0/a;Ljava/lang/String;Lw0/a$a;Z)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v3, 0x1d

    .line 10
    .line 11
    if-lt v2, v3, :cond_1

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "tune2fs -l "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p2, Lw0/a$a;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p2, " | grep \'shared_blocks\'"

    .line 26
    .line 27
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p0, p2}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_0

    .line 39
    .line 40
    return v0

    .line 41
    :cond_0
    invoke-virtual {p0, v1}, Ln0/a;->k(Z)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    iget p2, p0, Ln0/a;->h:I

    .line 45
    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    const/4 p0, -0x2

    .line 49
    return p0

    .line 50
    :cond_1
    const/4 p2, 0x2

    .line 51
    new-array p2, p2, [Ljava/lang/Object;

    .line 52
    .line 53
    if-eqz p3, :cond_2

    .line 54
    .line 55
    const-string p3, "rw"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const-string p3, "ro"

    .line 59
    .line 60
    :goto_0
    aput-object p3, p2, v1

    .line 61
    .line 62
    const/4 p3, 0x1

    .line 63
    aput-object p1, p2, p3

    .line 64
    .line 65
    const-string p1, "mount -o %s,remount %s"

    .line 66
    .line 67
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    return v0

    .line 78
    :cond_3
    invoke-virtual {p0, v1}, Ln0/a;->k(Z)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    iget p0, p0, Ln0/a;->h:I

    .line 82
    .line 83
    if-nez p0, :cond_4

    .line 84
    .line 85
    move v0, v1

    .line 86
    :cond_4
    return v0
.end method
