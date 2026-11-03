.class public final Lf1/a;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# static fields
.field public static final c:F

.field public static final d:F


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {v0}, Ly0/c;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    sput v0, Lf1/a;->c:F

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-static {v0}, Ly0/c;->a(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    sput v0, Lf1/a;->d:F

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lf1/a;->a:I

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lf1/a;->b:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 10

    move-object v0, p0

    move v1, p5

    .line 1
    new-instance v7, Landroid/graphics/Paint;

    move-object/from16 v2, p9

    invoke-direct {v7, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 2
    iget v2, v0, Lf1/a;->a:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v2, p6

    int-to-float v2, v2

    .line 3
    sget v3, Lf1/a;->d:F

    add-float v4, v2, v3

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    add-float/2addr v5, v4

    add-float/2addr v5, v3

    .line 4
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sget v6, Lf1/a;->c:F

    add-float/2addr v3, v6

    add-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v6

    .line 5
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, p5, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v2, p1

    invoke-virtual {p1, v9, v8, v8, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 6
    iget v3, v0, Lf1/a;->b:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v3, v5

    add-float v8, v3, v4

    add-float v5, v6, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, v8

    .line 8
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    sget p2, Lf1/a;->c:F

    add-float/2addr p1, p2

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method
