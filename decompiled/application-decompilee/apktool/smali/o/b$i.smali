.class public final Lo/b$i;
.super Lo/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lo/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lp/g;Ljava/util/Locale;)Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Lo/b;->a:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide v2, 0xffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    and-long/2addr v0, v2

    .line 10
    const-wide/32 v2, 0x1030000

    .line 11
    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-lez v2, :cond_0

    .line 16
    .line 17
    const-wide/32 v2, 0x1031000

    .line 18
    .line 19
    .line 20
    cmp-long v2, v0, v2

    .line 21
    .line 22
    if-gez v2, :cond_0

    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p2, "@android:style/sys"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    long-to-int p2, v0

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "resourceId:0x"

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    return-object v2

    .line 61
    :cond_1
    invoke-virtual {p1, v0, v1}, Lp/g;->a(J)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v1, -0x1

    .line 70
    const/4 v3, 0x0

    .line 71
    move v5, v1

    .line 72
    move-object v4, v3

    .line 73
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_5

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Lp/g$a;

    .line 84
    .line 85
    iget-object v6, v4, Lp/g$a;->b:Lp/j;

    .line 86
    .line 87
    iget v6, v6, Lp/j;->g:I

    .line 88
    .line 89
    const v7, 0xfffe

    .line 90
    .line 91
    .line 92
    if-eq v6, v7, :cond_2

    .line 93
    .line 94
    const v7, 0xffff

    .line 95
    .line 96
    .line 97
    if-ne v6, v7, :cond_3

    .line 98
    .line 99
    :cond_2
    move v6, v1

    .line 100
    :cond_3
    if-le v6, v5, :cond_4

    .line 101
    .line 102
    iget-object v3, v4, Lp/g$a;->c:Lp/d;

    .line 103
    .line 104
    move v5, v6

    .line 105
    :cond_4
    iget-object v4, v4, Lp/g$a;->a:Lp/l;

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    if-nez v3, :cond_6

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    if-nez p2, :cond_7

    .line 112
    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string p2, "@"

    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p2, v4, Lp/l;->b:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p2, "/"

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object p2, v3, Lp/d;->c:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    goto :goto_1

    .line 140
    :cond_7
    invoke-virtual {v3, p1, p2}, Lp/d;->a(Lp/g;Ljava/util/Locale;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    :goto_1
    return-object v2
.end method
