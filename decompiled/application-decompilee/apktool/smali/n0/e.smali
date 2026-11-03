.class public final Ln0/e;
.super Ln0/a;
.source "SourceFile"


# static fields
.field public static k:B

.field public static l:Ln0/e$a;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ln0/a;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-boolean v0, Ly/a;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_1
    sget-object v0, Ly/a;->b:Lj/c;

    .line 12
    .line 13
    if-eqz v0, :cond_a

    .line 14
    .line 15
    invoke-interface {v0}, Lj/c;->e()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sput-boolean v0, Ly/a;->c:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :goto_0
    move v0, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v0, v1

    .line 26
    :goto_1
    if-eqz v0, :cond_8

    .line 27
    .line 28
    :try_start_2
    invoke-static {}, Lru/zdevs/zarchiver/ZArchiver;->z()Lru/zdevs/zarchiver/ZArchiver;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    sget-object v0, Ln0/e;->l:Ln0/e$a;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    new-instance v0, Ln0/e$a;

    .line 39
    .line 40
    invoke-direct {v0}, Ln0/e$a;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v0, Ln0/e;->l:Ln0/e$a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 44
    .line 45
    :cond_2
    :try_start_3
    sget-object v0, Ly/a;->b:Lj/c;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-interface {v0}, Lj/c;->d()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 50
    .line 51
    .line 52
    :try_start_4
    sget-object v0, Ln0/e;->l:Ln0/e$a;

    .line 53
    .line 54
    invoke-static {v0}, Ly/a;->a(Ly/a$g;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 55
    .line 56
    .line 57
    :try_start_5
    sget-object v0, Ln0/e;->l:Ln0/e$a;

    .line 58
    .line 59
    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 60
    :try_start_6
    sget-object v3, Ln0/e;->l:Ln0/e$a;

    .line 61
    .line 62
    const-wide/32 v4, 0x927c0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 66
    .line 67
    .line 68
    monitor-exit v0

    .line 69
    goto :goto_2

    .line 70
    :catchall_0
    move-exception v3

    .line 71
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 72
    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 73
    :cond_3
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string v1, "binder haven\'t been received"

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 81
    :catch_0
    move-exception v0

    .line 82
    :try_start_9
    new-instance v1, Ljava/lang/RuntimeException;

    .line 83
    .line 84
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    throw v1

    .line 88
    :catch_1
    :cond_4
    :goto_2
    sget-boolean v0, Ly/a;->c:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    :try_start_a
    sget-object v0, Ly/a;->b:Lj/c;

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    invoke-interface {v0}, Lj/c;->e()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    sput-boolean v0, Ly/a;->c:Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    move v1, v2

    .line 106
    :cond_6
    move v2, v1

    .line 107
    :goto_3
    if-eqz v2, :cond_8

    .line 108
    .line 109
    const/4 v0, 0x1

    .line 110
    :try_start_b
    iput v0, p0, Ln0/a;->j:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 111
    .line 112
    return-void

    .line 113
    :cond_7
    :try_start_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    const-string v1, "binder haven\'t been received"

    .line 116
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 121
    :catch_2
    move-exception v0

    .line 122
    :try_start_d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 123
    .line 124
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 128
    :cond_8
    :try_start_e
    const-string v0, "sh"

    .line 129
    .line 130
    filled-new-array {v0}, [Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 134
    :try_start_f
    new-instance v1, Ly/c;

    .line 135
    .line 136
    sget-object v2, Ly/a;->b:Lj/c;

    .line 137
    .line 138
    if-eqz v2, :cond_9

    .line 139
    .line 140
    invoke-interface {v2, v0}, Lj/c;->h([Ljava/lang/String;)Lj/a;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-direct {v1, v0}, Ly/c;-><init>(Lj/a;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 145
    .line 146
    .line 147
    :try_start_10
    invoke-virtual {p0, v1}, Ln0/a;->e(Ljava/lang/Process;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_9
    :try_start_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    const-string v1, "binder haven\'t been received"

    .line 154
    .line 155
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    .line 159
    :catch_3
    move-exception v0

    .line 160
    :try_start_12
    new-instance v1, Ljava/lang/RuntimeException;

    .line 161
    .line 162
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    throw v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    .line 166
    :catch_4
    :goto_4
    return-void

    .line 167
    :cond_a
    :try_start_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 168
    .line 169
    const-string v1, "binder haven\'t been received"

    .line 170
    .line 171
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    .line 175
    :catch_5
    move-exception v0

    .line 176
    :try_start_14
    new-instance v1, Ljava/lang/RuntimeException;

    .line 177
    .line 178
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    throw v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    .line 182
    :catch_6
    const/4 v0, 0x2

    .line 183
    iput v0, p0, Ln0/a;->j:I

    .line 184
    .line 185
    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    sget-boolean v0, Lru/zdevs/zarchiver/ZApp;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method
