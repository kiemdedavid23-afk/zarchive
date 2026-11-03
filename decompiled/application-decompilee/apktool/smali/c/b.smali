.class public final Lc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b$a;
    }
.end annotation


# instance fields
.field public final a:Lc/c;

.field public final b:Lc/b$a;

.field public c:Lc/b;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Lb/g;


# direct methods
.method public constructor <init>(Lc/c;Lc/b$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lc/b;->d:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lc/b;->e:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput v1, p0, Lc/b;->f:I

    .line 12
    .line 13
    iput v1, p0, Lc/b;->g:I

    .line 14
    .line 15
    iput v0, p0, Lc/b;->h:I

    .line 16
    .line 17
    iput-object p1, p0, Lc/b;->a:Lc/c;

    .line 18
    .line 19
    iput-object p2, p0, Lc/b;->b:Lc/b$a;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lc/b;IIIIZ)Z
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lc/b;->c:Lc/b;

    .line 8
    .line 9
    iput v2, p0, Lc/b;->d:I

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lc/b;->e:I

    .line 13
    .line 14
    iput v1, p0, Lc/b;->f:I

    .line 15
    .line 16
    iput v0, p0, Lc/b;->h:I

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    if-nez p6, :cond_f

    .line 20
    .line 21
    sget-object p6, Lc/b$a;->e:Lc/b$a;

    .line 22
    .line 23
    iget-object v3, p1, Lc/b;->a:Lc/c;

    .line 24
    .line 25
    iget-object v4, p1, Lc/b;->b:Lc/b$a;

    .line 26
    .line 27
    iget-object v5, p0, Lc/b;->b:Lc/b$a;

    .line 28
    .line 29
    if-ne v4, v5, :cond_4

    .line 30
    .line 31
    sget-object v0, Lc/b$a;->f:Lc/b$a;

    .line 32
    .line 33
    if-ne v5, v0, :cond_1

    .line 34
    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_1
    if-ne v5, p6, :cond_d

    .line 38
    .line 39
    iget p6, v3, Lc/c;->z:I

    .line 40
    .line 41
    if-lez p6, :cond_2

    .line 42
    .line 43
    move p6, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move p6, v2

    .line 46
    :goto_0
    if-eqz p6, :cond_c

    .line 47
    .line 48
    iget-object p6, p0, Lc/b;->a:Lc/c;

    .line 49
    .line 50
    iget p6, p6, Lc/c;->z:I

    .line 51
    .line 52
    if-lez p6, :cond_3

    .line 53
    .line 54
    move p6, v1

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move p6, v2

    .line 57
    :goto_1
    if-nez p6, :cond_d

    .line 58
    .line 59
    goto :goto_6

    .line 60
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    sget-object v6, Lc/b$a;->g:Lc/b$a;

    .line 65
    .line 66
    if-eq v5, v1, :cond_9

    .line 67
    .line 68
    sget-object v7, Lc/b$a;->h:Lc/b$a;

    .line 69
    .line 70
    if-eq v5, v0, :cond_6

    .line 71
    .line 72
    const/4 v0, 0x3

    .line 73
    if-eq v5, v0, :cond_9

    .line 74
    .line 75
    const/4 v0, 0x4

    .line 76
    if-eq v5, v0, :cond_6

    .line 77
    .line 78
    const/4 v0, 0x6

    .line 79
    if-eq v5, v0, :cond_5

    .line 80
    .line 81
    goto :goto_6

    .line 82
    :cond_5
    if-eq v4, p6, :cond_c

    .line 83
    .line 84
    if-eq v4, v6, :cond_c

    .line 85
    .line 86
    if-eq v4, v7, :cond_c

    .line 87
    .line 88
    goto :goto_7

    .line 89
    :cond_6
    sget-object p6, Lc/b$a;->b:Lc/b$a;

    .line 90
    .line 91
    if-eq v4, p6, :cond_8

    .line 92
    .line 93
    sget-object p6, Lc/b$a;->d:Lc/b$a;

    .line 94
    .line 95
    if-ne v4, p6, :cond_7

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_7
    move p6, v2

    .line 99
    goto :goto_3

    .line 100
    :cond_8
    :goto_2
    move p6, v1

    .line 101
    :goto_3
    instance-of v0, v3, Lc/e;

    .line 102
    .line 103
    if-eqz v0, :cond_e

    .line 104
    .line 105
    if-nez p6, :cond_d

    .line 106
    .line 107
    if-ne v4, v7, :cond_c

    .line 108
    .line 109
    goto :goto_7

    .line 110
    :cond_9
    sget-object p6, Lc/b$a;->a:Lc/b$a;

    .line 111
    .line 112
    if-eq v4, p6, :cond_b

    .line 113
    .line 114
    sget-object p6, Lc/b$a;->c:Lc/b$a;

    .line 115
    .line 116
    if-ne v4, p6, :cond_a

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_a
    move p6, v2

    .line 120
    goto :goto_5

    .line 121
    :cond_b
    :goto_4
    move p6, v1

    .line 122
    :goto_5
    instance-of v0, v3, Lc/e;

    .line 123
    .line 124
    if-eqz v0, :cond_e

    .line 125
    .line 126
    if-nez p6, :cond_d

    .line 127
    .line 128
    if-ne v4, v6, :cond_c

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_c
    :goto_6
    move p6, v2

    .line 132
    goto :goto_8

    .line 133
    :cond_d
    :goto_7
    move p6, v1

    .line 134
    :cond_e
    :goto_8
    if-nez p6, :cond_f

    .line 135
    .line 136
    return v2

    .line 137
    :cond_f
    iput-object p1, p0, Lc/b;->c:Lc/b;

    .line 138
    .line 139
    if-lez p2, :cond_10

    .line 140
    .line 141
    iput p2, p0, Lc/b;->d:I

    .line 142
    .line 143
    goto :goto_9

    .line 144
    :cond_10
    iput v2, p0, Lc/b;->d:I

    .line 145
    .line 146
    :goto_9
    iput p3, p0, Lc/b;->e:I

    .line 147
    .line 148
    iput p4, p0, Lc/b;->f:I

    .line 149
    .line 150
    iput p5, p0, Lc/b;->h:I

    .line 151
    .line 152
    return v1
.end method

.method public final b()I
    .locals 3

    .line 1
    iget-object v0, p0, Lc/b;->a:Lc/c;

    .line 2
    .line 3
    iget v0, v0, Lc/c;->F:I

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget v0, p0, Lc/b;->e:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-le v0, v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lc/b;->c:Lc/b;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v2, v2, Lc/b;->a:Lc/c;

    .line 21
    .line 22
    iget v2, v2, Lc/c;->F:I

    .line 23
    .line 24
    if-ne v2, v1, :cond_1

    .line 25
    .line 26
    return v0

    .line 27
    :cond_1
    iget v0, p0, Lc/b;->d:I

    .line 28
    .line 29
    return v0
.end method

.method public final c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/b;->c:Lc/b;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lc/b;->d:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lc/b;->e:I

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    iput v1, p0, Lc/b;->f:I

    .line 12
    .line 13
    iput v0, p0, Lc/b;->h:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lc/b;->g:I

    .line 17
    .line 18
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b;->i:Lb/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lb/g;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Lb/g;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lc/b;->i:Lb/g;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lb/g;->b()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final e(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lc/b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "null:"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lc/b;->a:Lc/c;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lc/b;->b:Lc/b$a;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lc/b;->c:Lc/b;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, " connected to "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lc/b;->c:Lc/b;

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Lc/b;->e(Ljava/util/HashSet;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string p1, ""

    .line 54
    .line 55
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :cond_1
    const-string p1, "<-"

    .line 64
    .line 65
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "null:"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lc/b;->a:Lc/c;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lc/b;->b:Lc/b$a;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lc/b;->c:Lc/b;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, " connected to "

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lc/b;->c:Lc/b;

    .line 39
    .line 40
    invoke-virtual {v3, v0}, Lc/b;->e(Ljava/util/HashSet;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v0, ""

    .line 53
    .line 54
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method
