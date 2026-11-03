.class public abstract Lf0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/i$b;,
        Lf0/i$c;
    }
.end annotation


# instance fields
.field public a:Lf0/i$b;

.field public b:Lf0/i$c;

.field public c:I

.field public d:I

.field public e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lru/zdevs/zarchiver/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf0/i;->a:Lf0/i$b;

    .line 6
    .line 7
    iput-object v0, p0, Lf0/i;->b:Lf0/i$c;

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lf0/i;->c:I

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lf0/i;->d:I

    .line 14
    .line 15
    return-void
.end method

.method public static h(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    instance-of v3, v2, Landroid/widget/AdapterView;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    move-object v3, v2

    .line 25
    check-cast v3, Landroid/view/ViewGroup;

    .line 26
    .line 27
    invoke-static {v3, p1}, Lf0/i;->h(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 28
    .line 29
    .line 30
    instance-of v3, v2, Landroid/widget/LinearLayout;

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    instance-of v3, v2, Landroid/widget/TextView;

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return-void
.end method

.method public static l(Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    instance-of v1, p0, Landroid/view/ViewGroup;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {p0, v0}, Lf0/i;->h(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_6

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    instance-of v2, v1, Landroid/widget/AdapterView;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    check-cast v1, Landroid/widget/AdapterView;

    .line 66
    .line 67
    check-cast v0, Landroid/widget/AdapterView;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    instance-of v2, v1, Landroid/widget/CheckBox;

    .line 92
    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    check-cast v1, Landroid/widget/CheckBox;

    .line 96
    .line 97
    check-cast v0, Landroid/widget/CheckBox;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    instance-of v2, v1, Landroid/widget/TextView;

    .line 108
    .line 109
    if-eqz v2, :cond_2

    .line 110
    .line 111
    move-object v2, v1

    .line 112
    check-cast v2, Landroid/widget/TextView;

    .line 113
    .line 114
    move-object v3, v0

    .line 115
    check-cast v3, Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Landroid/widget/TextView;->getInputType()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 143
    .line 144
    .line 145
    instance-of v2, v1, Lru/zdevs/zarchiver/ui/text/BtnEditText;

    .line 146
    .line 147
    if-eqz v2, :cond_2

    .line 148
    .line 149
    check-cast v1, Lru/zdevs/zarchiver/ui/text/BtnEditText;

    .line 150
    .line 151
    check-cast v0, Lru/zdevs/zarchiver/ui/text/BtnEditText;

    .line 152
    .line 153
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/text/BtnEditText;->getButton()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-virtual {v1, v0}, Lru/zdevs/zarchiver/ui/text/BtnEditText;->setButton(I)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_6
    return-void
.end method

.method public static o(Landroid/app/Dialog;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v1, p0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/4 p0, -0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, -0x2

    .line 29
    :goto_0
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static q(Landroid/app/Dialog;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lru/zdevs/zarchiver/d;->d:Ljava/util/ArrayList;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 10
    .line 11
    iget-object v1, v1, Lru/zdevs/zarchiver/d;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public abstract d()V
.end method

.method public final e()V
    .locals 2

    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->f()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lf0/i$a;

    invoke-direct {v1, p0}, Lf0/i$a;-><init>(Lf0/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lru/zdevs/zarchiver/d;->d:Ljava/util/ArrayList;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 10
    .line 11
    iget-object v1, v1, Lru/zdevs/zarchiver/d;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public final i(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/i;->e:Landroid/util/SparseArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    return-object p1
.end method

.method public final j()I
    .locals 2

    iget v0, p0, Lf0/i;->d:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final n(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/i;->e:Landroid/util/SparseArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lf0/i;->e:Landroid/util/SparseArray;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lf0/i;->e:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final p(I)V
    .locals 2

    .line 1
    iget v0, p0, Lf0/i;->d:I

    .line 2
    .line 3
    const/high16 v1, -0x10000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    const v1, 0xffff

    .line 7
    .line 8
    .line 9
    and-int/2addr p1, v1

    .line 10
    or-int/2addr p1, v0

    .line 11
    iput p1, p0, Lf0/i;->d:I

    .line 12
    .line 13
    return-void
.end method
