.class Lcom/miui/maml/elements/VirtualAnimatedScreenElement$2;
.super Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;
.source "VirtualAnimatedScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/VirtualAnimatedScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
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


# virtual methods
.method public getIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;)I
    .locals 2

    .line 2
    instance-of v0, p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->access$100(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getIntValue(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$2;->getIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;)I

    move-result p1

    return p1
.end method

.method public setIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;I)V
    .locals 2

    .line 2
    instance-of v0, p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->access$100(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p1

    int-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setIntValue(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$2;->setIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;I)V

    return-void
.end method

.method public setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V
    .locals 2

    .line 2
    instance-of v0, p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->access$100(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p1

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/folme/PropertyWrapper;->setVelocity(D)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setVelocityValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$2;->setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method
