.class public final Lf0/o$d;
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
    name = "d"
.end annotation


# instance fields
.field public final a:Lg0/h;

.field public final b:Lg0/e$b;


# direct methods
.method public constructor <init>(Lg0/e$b;Lg0/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf0/o$d;->b:Lg0/e$b;

    .line 5
    .line 6
    iput-object p2, p0, Lf0/o$d;->a:Lg0/h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
