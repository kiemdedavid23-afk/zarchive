.class public final Lb1/f;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/view/textclassifier/TextClassification;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Landroid/view/textclassifier/TextClassificationManager;

.field public final b:I

.field public final c:Lru/zdevs/zarchiver/ui/editor/EditableView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lru/zdevs/zarchiver/ui/editor/EditableView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "textclassification"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/view/textclassifier/TextClassificationManager;

    .line 11
    .line 12
    iput-object p1, p0, Lb1/f;->a:Landroid/view/textclassifier/TextClassificationManager;

    .line 13
    .line 14
    iput-object p2, p0, Lb1/f;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 15
    .line 16
    const/16 p1, 0x3e8

    .line 17
    .line 18
    iput p1, p0, Lb1/f;->b:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    iget p1, p0, Lb1/f;->b:I

    .line 4
    .line 5
    int-to-long v0, p1

    .line 6
    iget-object p1, p0, Lb1/f;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 7
    .line 8
    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v2, 0x1c

    .line 18
    .line 19
    iget-object v3, p0, Lb1/f;->a:Landroid/view/textclassifier/TextClassificationManager;

    .line 20
    .line 21
    if-lt v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectedText()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    new-instance v2, Landroid/view/textclassifier/TextClassification$Request$Builder;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-direct {v2, v1, v5, v4}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v1, v0}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getEditable()Lru/zdevs/zarchiver/ui/editor/b;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionStart()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionEnd()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-interface {v1, v2, v3, v4, v0}, Landroid/view/textclassifier/TextClassifier;->classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    move-object p1, v0

    .line 86
    :goto_1
    return-object p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/view/textclassifier/TextClassification;

    .line 2
    .line 3
    iget-object v0, p0, Lb1/f;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lru/zdevs/zarchiver/ui/editor/EditableView$b;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v0, v2, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView$b;-><init>(Lru/zdevs/zarchiver/ui/editor/EditableView;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, v0, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 20
    .line 21
    return-void
.end method

.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb1/f;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lru/zdevs/zarchiver/ui/editor/EditableView$b;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, v0, v2, v3}, Lru/zdevs/zarchiver/ui/editor/EditableView$b;-><init>(Lru/zdevs/zarchiver/ui/editor/EditableView;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method
