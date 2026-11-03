.class public final Lo0/c;
.super Lo0/a;
.source "SourceFile"


# direct methods
.method public static c(Ln0/a;Ljava/lang/String;Lg0/e$b;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {}, Lo0/a;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "\'\\\'\'"

    .line 10
    .line 11
    const-string v3, "\'"

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lo0/a;->a()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v5, " du -s \'"

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v5, "du -s -d 10 \'"

    .line 50
    .line 51
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    :goto_0
    invoke-virtual {p0, v2}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    return v0

    .line 75
    :cond_2
    if-eqz v1, :cond_3

    .line 76
    .line 77
    const-string v2, "/"

    .line 78
    .line 79
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    const/4 p1, 0x3

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/4 p1, 0x2

    .line 88
    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 89
    :try_start_0
    invoke-virtual {p0, v2}, Ln0/a;->k(Z)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-eqz v3, :cond_7

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    const/16 v4, 0x9

    .line 103
    .line 104
    invoke-static {v3, v4}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    array-length v4, v3

    .line 109
    if-ge v4, p1, :cond_6

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_6
    aget-object v4, v3, v0

    .line 113
    .line 114
    const-wide/16 v5, 0x0

    .line 115
    .line 116
    invoke-static {v5, v6, v4}, Lb/d;->j0(JLjava/lang/String;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v4

    .line 120
    iput-wide v4, p2, Lg0/e$b;->c:J

    .line 121
    .line 122
    if-eqz v1, :cond_4

    .line 123
    .line 124
    aget-object v3, v3, v2

    .line 125
    .line 126
    invoke-static {v0, v3}, Lb/d;->i0(ILjava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    iput v3, p2, Lg0/e$b;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catch_0
    :cond_7
    iget p0, p0, Ln0/a;->h:I

    .line 134
    .line 135
    if-nez p0, :cond_8

    .line 136
    .line 137
    move v0, v2

    .line 138
    :cond_8
    return v0
.end method
