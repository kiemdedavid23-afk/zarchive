.class public final Lru/zdevs/zarchiver/activity/OpenAsDlg$e;
.super Lv0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/activity/OpenAsDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final e:[Landroid/os/Parcelable;

.field public final f:Ljava/lang/String;

.field public final g:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>([Landroid/os/Parcelable;Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$e;->e:[Landroid/os/Parcelable;

    .line 5
    .line 6
    iput-object p2, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$e;->f:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$e;->g:Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 15

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iget-object v3, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$e;->f:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/16 v4, 0x3e8

    .line 20
    .line 21
    invoke-static {v4, v3}, Lb/d;->p(ILjava/lang/String;)Lt0/b;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v3, v2

    .line 27
    :goto_0
    iget-object v4, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$e;->e:[Landroid/os/Parcelable;

    .line 28
    .line 29
    if-eqz v4, :cond_a

    .line 30
    .line 31
    new-instance v5, Ljava/util/ArrayList;

    .line 32
    .line 33
    array-length v6, v4

    .line 34
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    array-length v6, v4

    .line 38
    const/4 v7, 0x0

    .line 39
    move v8, v7

    .line 40
    :goto_1
    if-ge v8, v6, :cond_8

    .line 41
    .line 42
    aget-object v9, v4, v8

    .line 43
    .line 44
    check-cast v9, Landroid/content/Intent;

    .line 45
    .line 46
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    iget-object v11, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$e;->g:Landroid/content/pm/PackageManager;

    .line 51
    .line 52
    if-eqz v10, :cond_1

    .line 53
    .line 54
    :try_start_0
    invoke-virtual {v11, v10, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    :try_start_1
    new-instance v12, Landroid/content/pm/ResolveInfo;

    .line 59
    .line 60
    invoke-direct {v12}, Landroid/content/pm/ResolveInfo;-><init>()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    .line 62
    .line 63
    :try_start_2
    iput-object v10, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catch_0
    move-object v12, v2

    .line 67
    goto :goto_2

    .line 68
    :catch_1
    :cond_1
    move-object v10, v2

    .line 69
    move-object v12, v10

    .line 70
    :catch_2
    :goto_2
    if-nez v10, :cond_3

    .line 71
    .line 72
    const/high16 v10, 0x10000

    .line 73
    .line 74
    invoke-virtual {v11, v9, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    if-eqz v12, :cond_2

    .line 79
    .line 80
    iget-object v10, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_2
    move-object v10, v2

    .line 84
    :cond_3
    :goto_3
    if-nez v10, :cond_4

    .line 85
    .line 86
    new-instance v10, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v11, "No activity found for "

    .line 89
    .line 90
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    const-string v10, "TaskResolve"

    .line 101
    .line 102
    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_4
    new-instance v10, Lb0/i$a;

    .line 107
    .line 108
    invoke-direct {v10, v9, v12, v11}, Lb0/i$a;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    .line 109
    .line 110
    .line 111
    if-eqz v3, :cond_7

    .line 112
    .line 113
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    if-eqz v11, :cond_7

    .line 118
    .line 119
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    const-string v11, "file"

    .line 128
    .line 129
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    const/4 v11, 0x1

    .line 134
    xor-int/2addr v9, v11

    .line 135
    iget-object v13, v3, Lt0/b;->b:Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v13, :cond_6

    .line 138
    .line 139
    iget-object v14, v3, Lt0/b;->c:Ljava/lang/String;

    .line 140
    .line 141
    if-eqz v14, :cond_6

    .line 142
    .line 143
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 144
    .line 145
    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v13

    .line 151
    if-eqz v13, :cond_6

    .line 152
    .line 153
    iget-object v13, v3, Lt0/b;->c:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 156
    .line 157
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v12

    .line 163
    if-eqz v12, :cond_6

    .line 164
    .line 165
    iget v12, v3, Lt0/b;->d:I

    .line 166
    .line 167
    if-ne v12, v11, :cond_5

    .line 168
    .line 169
    move v12, v11

    .line 170
    goto :goto_4

    .line 171
    :cond_5
    move v12, v7

    .line 172
    :goto_4
    if-ne v9, v12, :cond_6

    .line 173
    .line 174
    move v9, v11

    .line 175
    goto :goto_5

    .line 176
    :cond_6
    move v9, v7

    .line 177
    :goto_5
    if-eqz v9, :cond_7

    .line 178
    .line 179
    iput-boolean v11, v10, Lb0/i$a;->g:Z

    .line 180
    .line 181
    :cond_7
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 185
    .line 186
    goto/16 :goto_1

    .line 187
    .line 188
    :cond_8
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    :goto_7
    const/4 v3, 0x4

    .line 196
    if-ge v7, v3, :cond_9

    .line 197
    .line 198
    if-ge v7, v2, :cond_9

    .line 199
    .line 200
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Lb0/i$a;

    .line 205
    .line 206
    invoke-virtual {v3}, Lb0/i$a;->b()Landroid/graphics/drawable/Drawable;

    .line 207
    .line 208
    .line 209
    add-int/lit8 v7, v7, 0x1

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_9
    move-object v2, v5

    .line 213
    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 214
    .line 215
    .line 216
    new-instance v0, Lru/zdevs/zarchiver/activity/OpenAsDlg$c;

    .line 217
    .line 218
    invoke-direct {v0, v2}, Lru/zdevs/zarchiver/activity/OpenAsDlg$c;-><init>(Ljava/util/ArrayList;)V

    .line 219
    .line 220
    .line 221
    return-object v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
