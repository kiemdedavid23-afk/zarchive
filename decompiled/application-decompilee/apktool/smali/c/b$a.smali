.class public final enum Lc/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/b$a;

.field public static final enum b:Lc/b$a;

.field public static final enum c:Lc/b$a;

.field public static final enum d:Lc/b$a;

.field public static final enum e:Lc/b$a;

.field public static final enum f:Lc/b$a;

.field public static final enum g:Lc/b$a;

.field public static final enum h:Lc/b$a;

.field public static final synthetic i:[Lc/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lc/b$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lc/b$a;-><init>(ILjava/lang/String;)V

    new-instance v1, Lc/b$a;

    const-string v3, "LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3}, Lc/b$a;-><init>(ILjava/lang/String;)V

    sput-object v1, Lc/b$a;->a:Lc/b$a;

    new-instance v3, Lc/b$a;

    const-string v5, "TOP"

    const/4 v6, 0x2

    invoke-direct {v3, v6, v5}, Lc/b$a;-><init>(ILjava/lang/String;)V

    sput-object v3, Lc/b$a;->b:Lc/b$a;

    new-instance v5, Lc/b$a;

    const-string v7, "RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v8, v7}, Lc/b$a;-><init>(ILjava/lang/String;)V

    sput-object v5, Lc/b$a;->c:Lc/b$a;

    new-instance v7, Lc/b$a;

    const-string v9, "BOTTOM"

    const/4 v10, 0x4

    invoke-direct {v7, v10, v9}, Lc/b$a;-><init>(ILjava/lang/String;)V

    sput-object v7, Lc/b$a;->d:Lc/b$a;

    new-instance v9, Lc/b$a;

    const-string v11, "BASELINE"

    const/4 v12, 0x5

    invoke-direct {v9, v12, v11}, Lc/b$a;-><init>(ILjava/lang/String;)V

    sput-object v9, Lc/b$a;->e:Lc/b$a;

    new-instance v11, Lc/b$a;

    const-string v13, "CENTER"

    const/4 v14, 0x6

    invoke-direct {v11, v14, v13}, Lc/b$a;-><init>(ILjava/lang/String;)V

    sput-object v11, Lc/b$a;->f:Lc/b$a;

    new-instance v13, Lc/b$a;

    const-string v15, "CENTER_X"

    const/4 v14, 0x7

    invoke-direct {v13, v14, v15}, Lc/b$a;-><init>(ILjava/lang/String;)V

    sput-object v13, Lc/b$a;->g:Lc/b$a;

    new-instance v15, Lc/b$a;

    const-string v14, "CENTER_Y"

    const/16 v12, 0x8

    invoke-direct {v15, v12, v14}, Lc/b$a;-><init>(ILjava/lang/String;)V

    sput-object v15, Lc/b$a;->h:Lc/b$a;

    const/16 v14, 0x9

    new-array v14, v14, [Lc/b$a;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lc/b$a;->i:[Lc/b$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/b$a;
    .locals 1

    const-class v0, Lc/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/b$a;

    return-object p0
.end method

.method public static values()[Lc/b$a;
    .locals 1

    sget-object v0, Lc/b$a;->i:[Lc/b$a;

    invoke-virtual {v0}, [Lc/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/b$a;

    return-object v0
.end method
