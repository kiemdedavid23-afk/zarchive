.class public final Ly/c;
.super Ljava/lang/Process;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public a:Lj/a;

.field public b:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

.field public c:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;


# direct methods
.method public constructor <init>(Lj/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly/c;->a:Lj/a;

    .line 5
    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string v0, "ShizukuRemoteProcess"

    .line 17
    .line 18
    const-string v1, "linkToDeath"

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ly/c;->a:Lj/a;

    .line 3
    .line 4
    const-string v0, "ShizukuRemoteProcess"

    .line 5
    .line 6
    const-string v1, "remote process is dead"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ly/c;->a:Lj/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lj/a;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    throw v1
.end method

.method public final exitValue()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ly/c;->a:Lj/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lj/a;->f()I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v1
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 2
    .line 3
    iget-object v1, p0, Ly/c;->a:Lj/a;

    .line 4
    .line 5
    invoke-interface {v1}, Lj/a;->a()Landroid/os/ParcelFileDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v1
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Ly/c;->c:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 6
    .line 7
    iget-object v1, p0, Ly/c;->a:Lj/a;

    .line 8
    .line 9
    invoke-interface {v1}, Lj/a;->c()Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ly/c;->c:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/RuntimeException;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v1

    .line 26
    :cond_0
    :goto_0
    iget-object v0, p0, Ly/c;->c:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 27
    .line 28
    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Ly/c;->b:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 6
    .line 7
    iget-object v1, p0, Ly/c;->a:Lj/a;

    .line 8
    .line 9
    invoke-interface {v1}, Lj/a;->b()Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ly/c;->b:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/RuntimeException;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v1

    .line 26
    :cond_0
    :goto_0
    iget-object v0, p0, Ly/c;->b:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 27
    .line 28
    return-object v0
.end method

.method public final waitFor()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ly/c;->a:Lj/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lj/a;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v1
.end method
