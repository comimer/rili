.class Lcom/miui/maml/data/Expression$OpeInfo;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/Expression$OpeInfo$Parser;
    }
.end annotation


# static fields
.field private static final OPE_SIZE:I

.field private static final mOpePar:[I

.field private static final mOpePriority:[I

.field private static final mOpes:[Ljava/lang/String;


# instance fields
.field public participants:I

.field public priority:I

.field public str:Ljava/lang/String;

.field public unary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/miui/maml/data/Expression$OpeInfo;->mOpePriority:[I

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/miui/maml/data/Expression$OpeInfo;->mOpePar:[I

    .line 16
    .line 17
    const-string v1, "+"

    .line 18
    .line 19
    const-string v2, "-"

    .line 20
    .line 21
    const-string v3, "*"

    .line 22
    .line 23
    const-string v4, "/"

    .line 24
    .line 25
    const-string v5, "%"

    .line 26
    .line 27
    const-string v6, "&"

    .line 28
    .line 29
    const-string v7, "|"

    .line 30
    .line 31
    const-string v8, "^"

    .line 32
    .line 33
    const-string v9, "~"

    .line 34
    .line 35
    const-string v10, "{{"

    .line 36
    .line 37
    const-string v11, "}}"

    .line 38
    .line 39
    const-string v12, "!"

    .line 40
    .line 41
    const-string v13, "=="

    .line 42
    .line 43
    const-string v14, "!="

    .line 44
    .line 45
    const-string v15, "**"

    .line 46
    .line 47
    const-string v16, "||"

    .line 48
    .line 49
    const-string v17, "}"

    .line 50
    .line 51
    const-string v18, "}="

    .line 52
    .line 53
    const-string v19, "{"

    .line 54
    .line 55
    const-string v20, "{="

    .line 56
    .line 57
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/miui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    .line 62
    .line 63
    array-length v0, v0

    .line 64
    sput v0, Lcom/miui/maml/data/Expression$OpeInfo;->OPE_SIZE:I

    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 4
        0x4
        0x4
        0x3
        0x3
        0x3
        0x8
        0x9
        0xa
        0x2
        0x5
        0x5
        0x2
        0x7
        0x7
        0xb
        0xc
        0x6
        0x6
        0x6
        0x6
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 1
    sget v0, Lcom/miui/maml/data/Expression$OpeInfo;->OPE_SIZE:I

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static getOpeInfo(I)Lcom/miui/maml/data/Expression$OpeInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/maml/data/Expression$OpeInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/maml/data/Expression$OpeInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/miui/maml/data/Expression$OpeInfo;->mOpePriority:[I

    .line 7
    .line 8
    aget v1, v1, p0

    .line 9
    .line 10
    iput v1, v0, Lcom/miui/maml/data/Expression$OpeInfo;->priority:I

    .line 11
    .line 12
    sget-object v1, Lcom/miui/maml/data/Expression$OpeInfo;->mOpePar:[I

    .line 13
    .line 14
    aget v1, v1, p0

    .line 15
    .line 16
    iput v1, v0, Lcom/miui/maml/data/Expression$OpeInfo;->participants:I

    .line 17
    .line 18
    sget-object v1, Lcom/miui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    .line 19
    .line 20
    aget-object p0, v1, p0

    .line 21
    .line 22
    iput-object p0, v0, Lcom/miui/maml/data/Expression$OpeInfo;->str:Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method
