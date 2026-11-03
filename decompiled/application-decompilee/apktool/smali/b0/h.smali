.class public final Lb0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/graphics/drawable/Drawable;

.field public final c:I

.field public final d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lb0/h;->a:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lb0/h;->b:Landroid/graphics/drawable/Drawable;

    .line 8
    iput p1, p0, Lb0/h;->c:I

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lb0/h;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 11
    iput-object p4, p0, Lb0/h;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lb0/h;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lb0/h;->b:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lb0/h;->c:I

    return-void
.end method
