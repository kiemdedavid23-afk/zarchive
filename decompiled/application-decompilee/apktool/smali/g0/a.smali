.class public final Lg0/a;
.super Lg0/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lg0/h;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lg0/h;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lg0/f;-><init>(Lg0/h;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lg0/h;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final o()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final p()[Lg0/f;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lg0/f;

    return-object v0
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final s(Ljava/lang/String;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final t(Lg0/h;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final v(I)Landroid/os/ParcelFileDescriptor;
    .locals 0

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method public final w()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method public final x(J)Ljava/io/OutputStream;
    .locals 0

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method public final y(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final z(JLjava/io/OutputStream;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
