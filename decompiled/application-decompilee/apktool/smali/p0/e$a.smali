.class public final Lp0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:[I

.field public final c:[Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;[I[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp0/e$a;->a:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    iput-object p2, p0, Lp0/e$a;->b:[I

    .line 7
    .line 8
    iput-object p3, p0, Lp0/e$a;->c:[Ljava/lang/String;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lp0/e$a;->d:I

    .line 12
    .line 13
    return-void
.end method
