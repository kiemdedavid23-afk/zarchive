.class public final Lk0/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk0/c$c;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lk0/c$c;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lk0/c$c;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lk0/c$c;->d:I

    .line 11
    .line 12
    return-void
.end method
