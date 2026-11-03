.class public final Lp/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp/g$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lp/g;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(J)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lp/g$a;",
            ">;"
        }
    .end annotation

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    shr-long v0, p1, v0

    .line 4
    .line 5
    const-wide/16 v2, 0xff

    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    int-to-short v0, v0

    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    shr-long v4, p1, v1

    .line 13
    .line 14
    and-long v1, v4, v2

    .line 15
    .line 16
    long-to-int v1, v1

    .line 17
    int-to-short v1, v1

    .line 18
    const-wide/32 v2, 0xffff

    .line 19
    .line 20
    .line 21
    and-long/2addr v2, p1

    .line 22
    long-to-int v2, v2

    .line 23
    iget-object v3, p0, Lp/g;->a:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lp/f;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_0
    iget-object v3, v0, Lp/f;->d:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lp/l;

    .line 53
    .line 54
    iget-object v0, v0, Lp/f;->e:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/util/List;

    .line 65
    .line 66
    if-eqz v3, :cond_8

    .line 67
    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    iget-object v1, v3, Lp/l;->a:[J

    .line 72
    .line 73
    array-length v1, v1

    .line 74
    if-ge v2, v1, :cond_2

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 v1, 0x0

    .line 79
    :goto_0
    if-nez v1, :cond_3

    .line 80
    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_7

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Lp/j;

    .line 106
    .line 107
    invoke-virtual {v4, v2}, Lp/j;->a(I)Lp/d;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    if-nez v5, :cond_4

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    iget-object v6, v5, Lp/d;->d:Lo/b;

    .line 115
    .line 116
    if-nez v6, :cond_5

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    instance-of v7, v6, Lo/b$i;

    .line 120
    .line 121
    if-eqz v7, :cond_6

    .line 122
    .line 123
    check-cast v6, Lo/b$i;

    .line 124
    .line 125
    iget v6, v6, Lo/b;->a:I

    .line 126
    .line 127
    int-to-long v6, v6

    .line 128
    const-wide v8, 0xffffffffL

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    and-long/2addr v6, v8

    .line 134
    cmp-long v6, p1, v6

    .line 135
    .line 136
    if-nez v6, :cond_6

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    new-instance v6, Lp/g$a;

    .line 140
    .line 141
    invoke-direct {v6, v3, v4, v5}, Lp/g$a;-><init>(Lp/l;Lp/j;Lp/d;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_7
    return-object v1

    .line 149
    :cond_8
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    return-object p1
.end method
