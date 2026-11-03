.class public final Lp0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp0/c$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/io/InputStream;)Lp0/c$a;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/zip/ZipInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    const-string v2, "meta.xml"

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    new-instance v1, Lp0/c$a;

    .line 28
    .line 29
    invoke-direct {v1}, Lp0/c$a;-><init>()V

    .line 30
    .line 31
    .line 32
    move-object p0, v1

    .line 33
    :cond_1
    invoke-static {v0, p0}, Lp0/c;->c(Ljava/util/zip/ZipInputStream;Lp0/c$a;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const-string v2, "docProps/app.xml"

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_3

    .line 48
    .line 49
    const-string v2, "docProps/core.xml"

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    :cond_3
    if-nez p0, :cond_4

    .line 62
    .line 63
    new-instance v1, Lp0/c$a;

    .line 64
    .line 65
    invoke-direct {v1}, Lp0/c$a;-><init>()V

    .line 66
    .line 67
    .line 68
    move-object p0, v1

    .line 69
    :cond_4
    invoke-static {v0, p0}, Lp0/c;->b(Ljava/util/zip/ZipInputStream;Lp0/c$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    invoke-static {v0}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :catch_0
    :cond_5
    :goto_1
    invoke-static {v0}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 79
    .line 80
    .line 81
    return-object p0
.end method

.method public static b(Ljava/util/zip/ZipInputStream;Lp0/c$a;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 v1, 0x0

    .line 20
    move v3, v1

    .line 21
    move v4, v3

    .line 22
    move v5, v4

    .line 23
    :goto_0
    if-eq p0, v2, :cond_9

    .line 24
    .line 25
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const/4 v6, 0x3

    .line 30
    if-ne p0, v6, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v6, "coreProperties"

    .line 37
    .line 38
    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_8

    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    const/4 v6, 0x2

    .line 51
    if-ne p0, v6, :cond_5

    .line 52
    .line 53
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string v3, "creator"

    .line 58
    .line 59
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    iget-object v3, p1, Lp0/c$a;->a:Ljava/lang/String;

    .line 66
    .line 67
    if-nez v3, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const-string v3, "lastModifiedBy"

    .line 71
    .line 72
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    :goto_1
    move v4, v1

    .line 79
    move v5, v4

    .line 80
    move v3, v2

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    const-string v3, "Pages"

    .line 83
    .line 84
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    move v3, v1

    .line 91
    move v5, v3

    .line 92
    move v4, v2

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    const-string v3, "title"

    .line 95
    .line 96
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    move v3, v1

    .line 101
    move v4, v3

    .line 102
    if-eqz p0, :cond_4

    .line 103
    .line 104
    move v5, v2

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    move v5, v4

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    const/4 v6, 0x4

    .line 113
    if-ne p0, v6, :cond_8

    .line 114
    .line 115
    if-eqz v3, :cond_6

    .line 116
    .line 117
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    iput-object p0, p1, Lp0/c$a;->a:Ljava/lang/String;

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    if-eqz v4, :cond_7

    .line 125
    .line 126
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    iput-object p0, p1, Lp0/c$a;->c:Ljava/lang/String;

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    if-eqz v5, :cond_8

    .line 134
    .line 135
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    iput-object p0, p1, Lp0/c$a;->b:Ljava/lang/String;

    .line 140
    .line 141
    :cond_8
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    goto :goto_0

    .line 146
    :cond_9
    :goto_3
    return-void
.end method

.method public static c(Ljava/util/zip/ZipInputStream;Lp0/c$a;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 v1, 0x0

    .line 20
    move v3, v1

    .line 21
    move v4, v3

    .line 22
    :goto_0
    if-eq p0, v2, :cond_9

    .line 23
    .line 24
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/4 v5, 0x3

    .line 29
    if-ne p0, v5, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v5, "meta"

    .line 36
    .line 37
    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_8

    .line 42
    .line 43
    goto/16 :goto_5

    .line 44
    .line 45
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    const/4 v5, 0x2

    .line 50
    if-ne p0, v5, :cond_6

    .line 51
    .line 52
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string v3, "initial-creator"

    .line 57
    .line 58
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    iget-object v3, p1, Lp0/c$a;->a:Ljava/lang/String;

    .line 65
    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const-string v3, "creator"

    .line 70
    .line 71
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    :goto_1
    move v4, v1

    .line 78
    move v3, v2

    .line 79
    goto :goto_4

    .line 80
    :cond_2
    const-string v3, "title"

    .line 81
    .line 82
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    move v3, v1

    .line 89
    move v4, v2

    .line 90
    goto :goto_4

    .line 91
    :cond_3
    const-string v3, "document-statistic"

    .line 92
    .line 93
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_5

    .line 98
    .line 99
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    move v3, v1

    .line 104
    :goto_2
    if-ge v3, p0, :cond_5

    .line 105
    .line 106
    const-string v4, "page-count"

    .line 107
    .line 108
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_4

    .line 117
    .line 118
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    iput-object p0, p1, Lp0/c$a;->c:Ljava/lang/String;

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_5
    :goto_3
    move v3, v1

    .line 129
    move v4, v3

    .line 130
    goto :goto_4

    .line 131
    :cond_6
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    const/4 v5, 0x4

    .line 136
    if-ne p0, v5, :cond_8

    .line 137
    .line 138
    if-eqz v3, :cond_7

    .line 139
    .line 140
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    iput-object p0, p1, Lp0/c$a;->a:Ljava/lang/String;

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_7
    if-eqz v4, :cond_8

    .line 148
    .line 149
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    iput-object p0, p1, Lp0/c$a;->b:Ljava/lang/String;

    .line 154
    .line 155
    :cond_8
    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_9
    :goto_5
    return-void
.end method
