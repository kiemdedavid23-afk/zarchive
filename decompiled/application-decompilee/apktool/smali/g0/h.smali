.class public final Lg0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lg0/h;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg0/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg0/h$a;

    invoke-direct {v0}, Lg0/h$a;-><init>()V

    sput-object v0, Lg0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg0/h;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg0/h;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lg0/h;->d:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg0/h;->e:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 14
    iput-object p1, p0, Lg0/h;->e:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lg0/h;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg0/h;->a:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg0/h;->b:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg0/h;->d:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg0/h;->e:Ljava/lang/String;

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lg0/h;->f:I

    return-void
.end method

.method public constructor <init>(Lg0/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lg0/h;->a:Ljava/lang/String;

    iput-object v0, p0, Lg0/h;->a:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lg0/h;->b:Ljava/lang/String;

    iput-object v0, p0, Lg0/h;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lg0/h;->c:Ljava/lang/String;

    iput-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lg0/h;->d:Ljava/lang/String;

    iput-object v0, p0, Lg0/h;->d:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lg0/h;->e:Ljava/lang/String;

    iput-object v0, p0, Lg0/h;->e:Ljava/lang/String;

    .line 7
    iget p1, p1, Lg0/h;->f:I

    iput p1, p0, Lg0/h;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/SAF"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "saf"

    .line 32
    iput-object v0, p0, Lg0/h;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "file"

    .line 33
    iput-object v0, p0, Lg0/h;->a:Ljava/lang/String;

    .line 34
    :goto_0
    iput-object p1, p0, Lg0/h;->c:Ljava/lang/String;

    const-string p1, ""

    .line 35
    iput-object p1, p0, Lg0/h;->e:Ljava/lang/String;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lg0/h;->b:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lg0/h;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lg0/h;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lg0/h;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-object v0, p2, Lg0/h;->a:Ljava/lang/String;

    iput-object v0, p0, Lg0/h;->a:Ljava/lang/String;

    .line 18
    iget-object v0, p2, Lg0/h;->b:Ljava/lang/String;

    iput-object v0, p0, Lg0/h;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {p2}, Lg0/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p2, Lg0/h;->c:Ljava/lang/String;

    iput-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 21
    iget-object p2, p2, Lg0/h;->e:Ljava/lang/String;

    invoke-static {p2, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg0/h;->e:Ljava/lang/String;

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lg0/h;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lg0/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 24
    iget-object p1, p2, Lg0/h;->e:Ljava/lang/String;

    iput-object p1, p0, Lg0/h;->e:Ljava/lang/String;

    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p2, Lg0/h;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 26
    iget-object p1, p2, Lg0/h;->e:Ljava/lang/String;

    iput-object p1, p0, Lg0/h;->e:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lg0/h;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lg0/h;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 29
    iput-object p3, p0, Lg0/h;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lg0/h;->c:Ljava/lang/String;

    const-string p1, ""

    .line 42
    iput-object p1, p0, Lg0/h;->e:Ljava/lang/String;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lg0/h;->b:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lg0/h;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lg0/h;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lg0/h;->c:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lg0/h;->e:Ljava/lang/String;

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lg0/h;->b:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lg0/h;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lg0/h;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lg0/h;->c:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lg0/h;->e:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lg0/h;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lg0/h;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lg0/h;->f:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lg0/h;->g()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lg0/h;->e:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lg0/h;->e:Ljava/lang/String;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 30
    .line 31
    :goto_0
    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lg0/h;->f:I

    .line 33
    .line 34
    return-void
.end method

.method public final b(Lg0/h;)I
    .locals 1

    invoke-virtual {p0}, Lg0/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lg0/h;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final c()Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lg0/h;->f:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lg0/h;->g()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const-string v2, "file"

    .line 9
    .line 10
    const/16 v3, 0x2f

    .line 11
    .line 12
    const-string v4, "/"

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    if-eqz v1, :cond_5

    .line 16
    .line 17
    iget-object v1, p0, Lg0/h;->e:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-lez v1, :cond_0

    .line 24
    .line 25
    iget-object v6, p0, Lg0/h;->e:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lg0/h;->e:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lg0/h;->e:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    iput-object v4, p0, Lg0/h;->e:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v1, ""

    .line 48
    .line 49
    iput-object v1, p0, Lg0/h;->e:Ljava/lang/String;

    .line 50
    .line 51
    :goto_0
    iget-object v1, p0, Lg0/h;->e:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    iget-object v1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 60
    .line 61
    const-string v6, "/uri/"

    .line 62
    .line 63
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    return v0

    .line 70
    :cond_2
    iget-object v1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 71
    .line 72
    const-string v6, "/SAF"

    .line 73
    .line 74
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    const-string v1, "saf"

    .line 81
    .line 82
    iput-object v1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iput-object v2, p0, Lg0/h;->a:Ljava/lang/String;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    move v1, v0

    .line 89
    goto :goto_2

    .line 90
    :cond_5
    :goto_1
    move v1, v5

    .line 91
    :goto_2
    invoke-virtual {p0}, Lg0/h;->m()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_8

    .line 96
    .line 97
    iget-object v6, p0, Lg0/h;->c:Ljava/lang/String;

    .line 98
    .line 99
    const/4 v7, 0x5

    .line 100
    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->indexOf(II)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    const/4 v8, -0x1

    .line 105
    if-ne v6, v8, :cond_8

    .line 106
    .line 107
    iget-object v6, p0, Lg0/h;->c:Ljava/lang/String;

    .line 108
    .line 109
    const-string v9, "%3A"

    .line 110
    .line 111
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eq v6, v8, :cond_7

    .line 116
    .line 117
    iget-object v6, p0, Lg0/h;->c:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v6}, Lru/zdevs/zarchiver/io/SAF;->g(Ljava/lang/String;)[Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    if-eqz v6, :cond_7

    .line 124
    .line 125
    aget-object v7, v6, v0

    .line 126
    .line 127
    invoke-static {v7}, Lw0/c;->f(Ljava/lang/String;)Lw0/c$a;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    if-eqz v7, :cond_7

    .line 132
    .line 133
    iget v8, v7, Lw0/c$a;->f:I

    .line 134
    .line 135
    const/4 v9, 0x4

    .line 136
    invoke-static {v8, v9}, Lb/d;->K(II)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-nez v8, :cond_7

    .line 141
    .line 142
    iget-object v7, v7, Lw0/c$a;->b:Ljava/lang/String;

    .line 143
    .line 144
    iput-object v7, p0, Lg0/h;->c:Ljava/lang/String;

    .line 145
    .line 146
    aget-object v7, v6, v5

    .line 147
    .line 148
    if-eqz v7, :cond_6

    .line 149
    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object v8, p0, Lg0/h;->c:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    aget-object v6, v6, v5

    .line 164
    .line 165
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    iput-object v6, p0, Lg0/h;->c:Ljava/lang/String;

    .line 173
    .line 174
    :cond_6
    iput-object v2, p0, Lg0/h;->a:Ljava/lang/String;

    .line 175
    .line 176
    move v6, v0

    .line 177
    goto :goto_3

    .line 178
    :cond_7
    move v6, v5

    .line 179
    :goto_3
    if-eqz v6, :cond_8

    .line 180
    .line 181
    const-string v1, "/storage/emulated"

    .line 182
    .line 183
    iput-object v1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 184
    .line 185
    iput-object v2, p0, Lg0/h;->a:Ljava/lang/String;

    .line 186
    .line 187
    move v1, v0

    .line 188
    :cond_8
    if-eqz v1, :cond_b

    .line 189
    .line 190
    iget-object v1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-lez v1, :cond_9

    .line 197
    .line 198
    iget-object v2, p0, Lg0/h;->c:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iput-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_9
    if-nez v1, :cond_a

    .line 208
    .line 209
    iget-object v1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-nez v1, :cond_a

    .line 216
    .line 217
    iput-object v4, p0, Lg0/h;->c:Ljava/lang/String;

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_a
    return v0

    .line 221
    :cond_b
    :goto_4
    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lg0/h;->d:Ljava/lang/String;

    .line 223
    .line 224
    return v5
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lg0/h;

    invoke-virtual {p0, p1}, Lg0/h;->b(Lg0/h;)I

    move-result p1

    return p1
.end method

.method public final d(Lg0/h;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p1, Lg0/h;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p1, Lg0/h;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1, v2}, Lb/d;->n(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lg0/h;->b:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v2, p1, Lg0/h;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1, v2}, Lu0/h;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lg0/h;->e:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Lg0/h;->e:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, p1}, Lu0/h;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    :cond_1
    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lg0/h;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lg0/h;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lg0/h;->e:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lg0/h;->m()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 31
    .line 32
    const/16 v3, 0x2f

    .line 33
    .line 34
    const/4 v4, 0x5

    .line 35
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v3, -0x1

    .line 40
    if-ne v0, v3, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0}, Lru/zdevs/zarchiver/io/SAF;->g(Ljava/lang/String;)[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    aget-object v1, v0, v1

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-static {v1}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :cond_1
    aget-object v0, v0, v2

    .line 60
    .line 61
    invoke-static {v0}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0

    .line 66
    :cond_2
    iget-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v0}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sget-object v3, Lm0/h;->a:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_3

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    const/16 v3, 0x202a

    .line 85
    .line 86
    if-ne v2, v3, :cond_3

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :cond_3
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lg0/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Lg0/h;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lg0/h;->d(Lg0/h;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final f()Lg0/h;
    .locals 2

    .line 1
    new-instance v0, Lg0/h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lg0/h;-><init>(Lg0/h;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lg0/h;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public final g()Z
    .locals 2

    .line 1
    const-string v0, "arch"

    .line 2
    .line 3
    iget-object v1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "rarch"

    .line 12
    .line 13
    iget-object v1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public final h()Z
    .locals 2

    .line 1
    const-string v0, "rarch"

    .line 2
    .line 3
    iget-object v1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lg0/h;->f:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lg0/h;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    mul-int/lit8 v1, v1, 0x1f

    .line 18
    .line 19
    iget-object v2, p0, Lg0/h;->e:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/2addr v2, v1

    .line 26
    iget-object v1, p0, Lg0/h;->b:Ljava/lang/String;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_0
    add-int/2addr v2, v1

    .line 37
    mul-int/lit8 v2, v2, 0x1f

    .line 38
    .line 39
    add-int/2addr v2, v0

    .line 40
    iput v2, p0, Lg0/h;->f:I

    .line 41
    .line 42
    :cond_1
    iget v0, p0, Lg0/h;->f:I

    .line 43
    .line 44
    return v0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    const-string v1, "/uri/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 2

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    iget-object v1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "root"

    .line 12
    .line 13
    iget-object v1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public final k()Z
    .locals 2

    .line 1
    const-string v0, "plugin"

    .line 2
    .line 3
    iget-object v1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "plglocal"

    .line 12
    .line 13
    iget-object v1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public final l()Z
    .locals 2

    .line 1
    const-string v0, "root"

    .line 2
    .line 3
    iget-object v1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final m()Z
    .locals 2

    .line 1
    const-string v0, "saf"

    .line 2
    .line 3
    iget-object v1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final n()Z
    .locals 2

    invoke-virtual {p0}, Lg0/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    const-string v1, "%2F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final o()Z
    .locals 2

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    iget-object v1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "root"

    .line 12
    .line 13
    iget-object v1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, "saf"

    .line 22
    .line 23
    iget-object v1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 35
    :goto_1
    return v0
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lg0/h;->f:I

    .line 5
    .line 6
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lg0/h;->f:I

    .line 5
    .line 6
    return-void
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg0/h;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lg0/h;->j()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    iget-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 20
    .line 21
    return-object v0
.end method

.method public final s()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lg0/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lg0/h;->c:Ljava/lang/String;

    iget-object v2, p0, Lg0/h;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lg0/h;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lg0/h;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lg0/h;->m()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "/SAF"

    .line 25
    .line 26
    const-string v2, "/storage"

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "%3A"

    .line 33
    .line 34
    const-string v2, "/"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "%2F"

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :cond_1
    iget-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 48
    .line 49
    return-object v0
.end method

.method public final toFile()Ljava/io/File;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lg0/h;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lg0/h;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    iget-object v1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 25
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lg0/h;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ":/"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lg0/h;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v1}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lg0/h;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/16 v2, 0x2f

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eq v1, v2, :cond_2

    .line 47
    .line 48
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object v1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lg0/h;->e:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v1}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    const/16 v1, 0x23

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lg0/h;->e:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object v1, p0, Lg0/h;->d:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v1}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_4

    .line 81
    .line 82
    const/16 v1, 0x24

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lg0/h;->d:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lg0/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lg0/h;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lg0/h;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lg0/h;->d:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lg0/h;->e:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
