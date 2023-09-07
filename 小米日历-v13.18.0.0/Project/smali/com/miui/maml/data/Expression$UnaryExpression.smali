.class Lcom/miui/maml/data/Expression$UnaryExpression;
.super Lcom/miui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnaryExpression"
.end annotation


# instance fields
.field private mExp:Lcom/miui/maml/data/Expression;

.field private mOpe:Lcom/miui/maml/data/Expression$Ope;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression$Ope;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 9
    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "UnaryExpression: invalid operator:"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "Expression"

    .line 30
    .line 31
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
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
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/ExpressionVisitor;->visit(Lcom/miui/maml/data/Expression;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 7
    .line 8
    .line 9
    return-void
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

.method public evaluate()D
    .locals 4

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    const-string v0, "Expression"

    .line 23
    .line 24
    const-string v1, "fail to evalute UnaryExpression, invalid operator"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    return-wide v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    double-to-int v0, v0

    .line 43
    not-int v0, v0

    .line 44
    int-to-double v0, v0

    .line 45
    return-wide v0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    cmpg-double v0, v0, v2

    .line 53
    .line 54
    if-gtz v0, :cond_2

    .line 55
    .line 56
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 57
    .line 58
    :cond_2
    return-wide v2

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    sub-double/2addr v2, v0

    .line 66
    return-wide v2
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$UnaryExpression;->evaluate()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
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

.method public isNull()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
