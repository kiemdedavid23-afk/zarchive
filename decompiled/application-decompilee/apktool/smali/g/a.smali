.class public final Lg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/os/ParcelFileDescriptor;

.field public final d:Ljava/lang/String;

.field public e:J

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/a;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lg/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lg/a;->c:Landroid/os/ParcelFileDescriptor;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lg/a;->d:Ljava/lang/String;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lg/a;->f:Z

    const-wide/16 p1, -0x1

    .line 7
    iput-wide p1, p0, Lg/a;->e:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lg/a;->a:Landroid/net/Uri;

    .line 10
    iput-object v0, p0, Lg/a;->b:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lg/a;->d:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lg/a;->c:Landroid/os/ParcelFileDescriptor;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lg/a;->f:Z

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lg/a;->e:J

    return-void
.end method
