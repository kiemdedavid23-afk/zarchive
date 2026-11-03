.class public final Lm0/e;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/io/Closeable;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Closeable;I)V
    .locals 0

    iput p2, p0, Lm0/e;->a:I

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lm0/e;->b:Ljava/io/Closeable;

    return-void
.end method

.method public static a(ILjava/lang/String;)Lm0/e;
    .locals 3

    .line 1
    invoke-static {p0}, Ln0/a;->c(I)Ln0/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ln0/a;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "cat \'"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "\'"

    .line 19
    .line 20
    const-string v2, "\'\\\'\'"

    .line 21
    .line 22
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, "\' ; exit $? ;\r\n"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Ln0/a;->n(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    new-instance p1, Lm0/e;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-direct {p1, p0, v0}, Lm0/e;-><init>(Ljava/io/Closeable;I)V

    .line 48
    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 52
    .line 53
    invoke-static {p0}, Lm0/e;->b(Ln0/a;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public static b(Ln0/a;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ln0/a;->j:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const p0, 0x7f0c00ff

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ln0/a;->f()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Ln0/a;->c:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    const-string p0, "Failed to get root shell"

    .line 30
    .line 31
    return-object p0
.end method


# virtual methods
.method public final available()I
    .locals 1

    .line 1
    iget v0, p0, Lm0/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/io/InputStream;->available()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lm0/e;->b:Ljava/io/Closeable;

    .line 12
    .line 13
    check-cast v0, Ljava/io/InputStream;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    .line 1
    iget v0, p0, Lm0/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    return-void

    .line 8
    :goto_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lm0/e;->b:Ljava/io/Closeable;

    .line 12
    .line 13
    check-cast v0, Ln0/a;

    .line 14
    .line 15
    invoke-virtual {v0}, Ln0/a;->close()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read()I
    .locals 8

    iget v0, p0, Lm0/e;->a:I

    iget-object v1, p0, Lm0/e;->b:Ljava/io/Closeable;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    .line 2
    :goto_0
    move-object v0, v1

    check-cast v0, Ln0/a;

    .line 3
    iget-object v2, v0, Ln0/a;->f:Ljava/io/DataInputStream;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v4, 0x3e8

    .line 4
    :catch_0
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5

    if-gtz v5, :cond_2

    .line 5
    invoke-virtual {v0}, Ln0/a;->h()Z

    move-result v5

    if-nez v5, :cond_3

    add-int/2addr v4, v3

    if-nez v4, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    :try_start_0
    move-object v5, v1

    check-cast v5, Ln0/a;

    const-wide/16 v6, 0xa

    invoke-virtual {v5, v6, v7}, Ln0/a;->j(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    :cond_3
    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read([BII)I
    .locals 1

    iget v0, p0, Lm0/e;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    .line 8
    :pswitch_0
    iget-object v0, p0, Lm0/e;->b:Ljava/io/Closeable;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final skip(J)J
    .locals 1

    .line 1
    iget v0, p0, Lm0/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    return-wide p1

    .line 11
    :pswitch_0
    iget-object v0, p0, Lm0/e;->b:Ljava/io/Closeable;

    .line 12
    .line 13
    check-cast v0, Ljava/io/InputStream;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    return-wide p1

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
