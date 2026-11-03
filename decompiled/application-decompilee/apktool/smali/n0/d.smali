.class public final Ln0/d;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final a:Ln0/a;

.field public b:Z


# direct methods
.method public constructor <init>(Ln0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln0/d;->a:Ln0/a;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Ln0/d;->b:Z

    .line 8
    .line 9
    return-void
.end method

.method public static a(ILjava/lang/String;)Ln0/d;
    .locals 3

    .line 1
    invoke-static {}, Lo0/a;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {p0}, Ln0/a;->c(I)Ln0/a;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ln0/a;->f()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lo0/a;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " sv \'"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "\'"

    .line 35
    .line 36
    const-string v2, "\'\\\'\'"

    .line 37
    .line 38
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, "\' ; exit $? ;\r\n"

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Ln0/a;->n(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    const/16 p1, 0x14

    .line 61
    .line 62
    const/16 v0, 0x10

    .line 63
    .line 64
    invoke-virtual {p0, p1, v0}, Ln0/a;->l(II)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    new-instance p1, Ln0/d;

    .line 71
    .line 72
    invoke-direct {p1, p0}, Ln0/d;-><init>(Ln0/a;)V

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 77
    .line 78
    invoke-static {p0}, Lm0/e;->b(Ln0/a;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 87
    .line 88
    const-string p1, "coreutils is not available"

    .line 89
    .line 90
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Ln0/d;->b:Z

    .line 5
    .line 6
    iget-object v1, p0, Ln0/d;->a:Ln0/a;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v1}, Ln0/a;->h()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    iget-object v0, v1, Ln0/a;->e:Ljava/io/DataOutputStream;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const-string v2, "^ZA_EOF#"

    .line 21
    .line 22
    const-string v3, "UTF-8"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_0
    const/16 v2, 0xa

    .line 39
    .line 40
    if-ge v0, v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Ln0/a;->h()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    const-wide/16 v2, 0xc8

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Ln0/a;->j(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 57
    .line 58
    iget-object v1, v1, Ln0/a;->c:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const-string v1, "Bad FD"

    .line 64
    .line 65
    :goto_1
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :catch_0
    :cond_2
    invoke-virtual {v1}, Ln0/a;->close()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln0/d;->a:Ln0/a;

    iget-object v1, v0, Ln0/a;->e:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 4
    iget-object v0, v0, Ln0/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Bad FD"

    .line 5
    :goto_0
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([BII)V
    .locals 3

    .line 6
    iget-object v0, p0, Ln0/d;->a:Ln0/a;

    iget-object v1, v0, Ln0/a;->e:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Ln0/a;->h()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 9
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 11
    iget-object p2, v0, Ln0/a;->c:Ljava/lang/String;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "Bad FD"

    .line 12
    :goto_0
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
