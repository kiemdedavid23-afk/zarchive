.class public final Lf0/o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lf0/o$c;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Lf0/o$c;->b:[I

    .line 7
    .line 8
    iput-object p2, p0, Lf0/o$c;->c:[Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lf0/o$c;->a:I

    return v0
.end method
