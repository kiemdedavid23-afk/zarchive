.class public final Lb1/b;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SourceFile"


# instance fields
.field public final a:Lru/zdevs/zarchiver/ui/editor/b;

.field public final b:Lru/zdevs/zarchiver/ui/editor/EditableView;

.field public c:I


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/editor/EditableView;Lru/zdevs/zarchiver/ui/editor/b;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lb1/b;->a:Lru/zdevs/zarchiver/ui/editor/b;

    .line 6
    .line 7
    iput-object p1, p0, Lb1/b;->b:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lb1/b;->c:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final beginBatchEdit()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lb1/b;->c:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lb1/b;->a:Lru/zdevs/zarchiver/ui/editor/b;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    iput-boolean v3, v2, Lru/zdevs/zarchiver/ui/editor/b;->e:Z

    .line 11
    .line 12
    iput v1, v2, Lru/zdevs/zarchiver/ui/editor/b;->f:I

    .line 13
    .line 14
    add-int/2addr v0, v3

    .line 15
    iput v0, p0, Lb1/b;->c:I

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return v3

    .line 19
    :cond_0
    monitor-exit p0

    .line 20
    return v1

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v0
.end method

.method public final clearMetaKeyStates(I)Z
    .locals 3

    iget-object v0, p0, Lb1/b;->b:Lru/zdevs/zarchiver/ui/editor/EditableView;

    :try_start_0
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    iget-object v2, p0, Lb1/b;->a:Lru/zdevs/zarchiver/ui/editor/b;

    invoke-interface {v1, v0, v2, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method public final endBatchEdit()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lb1/b;->c:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lb1/b;->a:Lru/zdevs/zarchiver/ui/editor/b;

    .line 8
    .line 9
    iput-boolean v1, v0, Lru/zdevs/zarchiver/ui/editor/b;->e:Z

    .line 10
    .line 11
    iget v2, v0, Lru/zdevs/zarchiver/ui/editor/b;->f:I

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v3, v0, Lru/zdevs/zarchiver/ui/editor/b;->a:Lru/zdevs/zarchiver/ui/editor/e;

    .line 16
    .line 17
    check-cast v3, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->m(I)V

    .line 20
    .line 21
    .line 22
    iput v1, v0, Lru/zdevs/zarchiver/ui/editor/b;->f:I

    .line 23
    .line 24
    :cond_0
    iget v0, p0, Lb1/b;->c:I

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    sub-int/2addr v0, v2

    .line 28
    iput v0, p0, Lb1/b;->c:I

    .line 29
    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    move v1, v2

    .line 33
    :cond_1
    monitor-exit p0

    .line 34
    return v1

    .line 35
    :cond_2
    monitor-exit p0

    .line 36
    return v1

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v0
.end method

.method public final getEditable()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Lb1/b;->a:Lru/zdevs/zarchiver/ui/editor/b;

    return-object v0
.end method

.method public final getSelectedText(I)Ljava/lang/CharSequence;
    .locals 0

    or-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .locals 0

    or-int/lit8 p3, p3, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object p1

    return-object p1
.end method

.method public final getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Lb1/b;->a:Lru/zdevs/zarchiver/ui/editor/b;

    invoke-virtual {p2, p1}, Lru/zdevs/zarchiver/ui/editor/b;->i(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Lb1/b;->a:Lru/zdevs/zarchiver/ui/editor/b;

    neg-int p1, p1

    invoke-virtual {p2, p1}, Lru/zdevs/zarchiver/ui/editor/b;->i(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final performContextMenuAction(I)Z
    .locals 1

    iget-object v0, p0, Lb1/b;->b:Lru/zdevs/zarchiver/ui/editor/EditableView;

    invoke-virtual {v0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->n(I)Z

    move-result p1

    return p1
.end method

.method public final reportFullscreenMode(Z)Z
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
