.class public final Lb0/k;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb0/k$a;,
        Lb0/k$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/LayoutInflater;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb0/k$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZArchiver;[Ld0/i;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "layout_inflater"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/LayoutInflater;

    .line 11
    .line 12
    iput-object v0, p0, Lb0/k;->a:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lb0/k;->b:Ljava/util/ArrayList;

    .line 20
    .line 21
    array-length v0, p2

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    if-ge v2, v0, :cond_3

    .line 25
    .line 26
    aget-object v3, p2, v2

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    iget-object v4, p0, Lb0/k;->b:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance v5, Lb0/k$a;

    .line 35
    .line 36
    iget-object v6, v3, Ld0/i;->a:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v6}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    const/4 v7, -0x1

    .line 43
    invoke-direct {v5, v7, v6}, Lb0/k$a;-><init>(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    iget-object v4, p0, Lb0/k;->b:Ljava/util/ArrayList;

    .line 50
    .line 51
    new-instance v5, Lb0/k$a;

    .line 52
    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const v7, 0x7f0c0058

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v7, " "

    .line 69
    .line 70
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v8, v3, Ld0/i;->b:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v8, "\n"

    .line 79
    .line 80
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const v9, 0x7f0c0054

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget v9, v3, Ld0/i;->d:I

    .line 97
    .line 98
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const v9, 0x7f0c0056

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-wide v9, v3, Ld0/i;->e:J

    .line 118
    .line 119
    const/4 v11, 0x2

    .line 120
    const/4 v12, 0x0

    .line 121
    invoke-static {v9, v10, v11, v12}, Lu0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v9, v3, Ld0/i;->f:I

    .line 129
    .line 130
    const/4 v10, 0x3

    .line 131
    invoke-static {v9, v10}, Lb/d;->K(II)Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    if-eqz v9, :cond_2

    .line 136
    .line 137
    new-instance v9, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const v8, 0x7f0c0057

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget v3, v3, Ld0/i;->f:I

    .line 156
    .line 157
    const/4 v7, 0x1

    .line 158
    invoke-static {v3, v7}, Lb/d;->K(II)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_1

    .line 163
    .line 164
    const-string v3, "+"

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_1
    const-string v3, "-"

    .line 168
    .line 169
    :goto_1
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    goto :goto_2

    .line 177
    :cond_2
    const-string v3, ""

    .line 178
    .line 179
    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-direct {v5, v1, v3}, Lb0/k$a;-><init>(ILjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_3
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lb0/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb0/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb0/k$a;

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Lb0/k;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lb0/k$a;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lb0/k;->a:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    const v1, 0x7f080029

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance p3, Lb0/k$b;

    .line 22
    .line 23
    invoke-direct {p3}, Lb0/k$b;-><init>()V

    .line 24
    .line 25
    .line 26
    const v1, 0x7f070089

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object v1, p3, Lb0/k$b;->a:Landroid/widget/TextView;

    .line 36
    .line 37
    const v1, 0x7f0700b4

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object v1, p3, Lb0/k$b;->b:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    check-cast p3, Lb0/k$b;

    .line 56
    .line 57
    iget v1, p1, Lb0/k$a;->a:I

    .line 58
    .line 59
    const/4 v2, -0x1

    .line 60
    const/4 v3, 0x0

    .line 61
    const/16 v4, 0x8

    .line 62
    .line 63
    if-ne v1, v2, :cond_1

    .line 64
    .line 65
    iget-object v0, p3, Lb0/k$b;->a:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p3, Lb0/k$b;->b:Landroid/widget/TextView;

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p3, Lb0/k$b;->a:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p3, Lb0/k$b;->b:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 85
    .line 86
    .line 87
    :goto_0
    iget-object p3, p3, Lb0/k$b;->b:Landroid/widget/TextView;

    .line 88
    .line 89
    iget-object p1, p1, Lb0/k$a;->b:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    return-object p2
.end method
