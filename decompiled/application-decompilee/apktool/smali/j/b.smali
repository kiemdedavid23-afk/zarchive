.class public abstract Lj/b;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "moe.shizuku.server.IShizukuApplication"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 1
    const-string v0, "moe.shizuku.server.IShizukuApplication"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-eq p1, v2, :cond_6

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v2, 0x2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eq p1, v2, :cond_4

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    if-eq p1, v2, :cond_2

    .line 26
    .line 27
    const/16 v0, 0x2711

    .line 28
    .line 29
    if-eq p1, v0, :cond_1

    .line 30
    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 53
    .line 54
    .line 55
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    if-eqz p3, :cond_3

    .line 62
    .line 63
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :cond_3
    check-cast v0, Landroid/os/Bundle;

    .line 68
    .line 69
    const-string p1, "shizuku:request-permission-reply-allowed"

    .line 70
    .line 71
    invoke-virtual {v0, p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 72
    .line 73
    .line 74
    sget-object p1, Ly/a;->a:Landroid/os/IBinder;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    if-eqz p3, :cond_5

    .line 84
    .line 85
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_5
    check-cast v0, Landroid/os/Bundle;

    .line 90
    .line 91
    const-string p1, "shizuku:attach-reply-uid"

    .line 92
    .line 93
    const/4 p2, -0x1

    .line 94
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 95
    .line 96
    .line 97
    sget-object p1, Ly/a;->a:Landroid/os/IBinder;

    .line 98
    .line 99
    const-string p1, "shizuku:attach-reply-version"

    .line 100
    .line 101
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 102
    .line 103
    .line 104
    const-string p1, "shizuku:attach-reply-patch-version"

    .line 105
    .line 106
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 107
    .line 108
    .line 109
    const-string p1, "shizuku:attach-reply-secontext"

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    const-string p1, "shizuku:attach-reply-permission-granted"

    .line 115
    .line 116
    invoke-virtual {v0, p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    sput-boolean p1, Ly/a;->c:Z

    .line 121
    .line 122
    const-string p1, "shizuku:attach-reply-should-show-request-permission-rationale"

    .line 123
    .line 124
    invoke-virtual {v0, p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 125
    .line 126
    .line 127
    invoke-static {}, Ly/a;->e()V

    .line 128
    .line 129
    .line 130
    :goto_0
    return v1

    .line 131
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return v1
.end method
