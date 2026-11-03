.class public final Lg1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg1/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, Lg1/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    check-cast p1, Lc0/d;

    .line 8
    .line 9
    check-cast p2, Lc0/d;

    .line 10
    .line 11
    invoke-virtual {p1}, Lc0/d;->f()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    move-object v0, p1

    .line 24
    check-cast v0, Lc0/f;

    .line 25
    .line 26
    iget-object v0, v0, Lc0/f;->k:Lg0/h;

    .line 27
    .line 28
    iget-object v0, v0, Lg0/h;->c:Ljava/lang/String;

    .line 29
    .line 30
    move-object v1, p2

    .line 31
    check-cast v1, Lc0/f;

    .line 32
    .line 33
    iget-object v1, v1, Lc0/f;->k:Lg0/h;

    .line 34
    .line 35
    iget-object v1, v1, Lg0/h;->c:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    const/4 v0, -0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 64
    .line 65
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    :goto_0
    return v0

    .line 72
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 73
    .line 74
    check-cast p2, Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {p1, p2}, Lb/d;->g(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    return p1

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
