.class Lcom/miui/maml/folme/AnimatedTarget$1;
.super Ljava/lang/Object;
.source "AnimatedTarget.java"

# interfaces
.implements Lmiuix/animation/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/folme/AnimatedTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiuix/animation/g<",
        "Lcom/miui/maml/elements/AnimatedScreenElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTarget(Lcom/miui/maml/elements/AnimatedScreenElement;)Lmiuix/animation/b;
    .locals 1

    .line 2
    new-instance v0, Lcom/miui/maml/folme/AnimatedTarget;

    invoke-direct {v0, p1}, Lcom/miui/maml/folme/AnimatedTarget;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    return-object v0
.end method

.method public bridge synthetic createTarget(Ljava/lang/Object;)Lmiuix/animation/b;
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lcom/miui/maml/folme/AnimatedTarget$1;->createTarget(Lcom/miui/maml/elements/AnimatedScreenElement;)Lmiuix/animation/b;

    move-result-object p1

    return-object p1
.end method
