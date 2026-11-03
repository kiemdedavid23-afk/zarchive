.class public final Lb0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lb0/b$a;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Lb0/b$a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput p2, p0, Lb0/b$a;->c:I

    .line 9
    .line 10
    return-void
.end method
