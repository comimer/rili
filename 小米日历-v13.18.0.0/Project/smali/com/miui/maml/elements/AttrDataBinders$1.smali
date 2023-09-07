.class Lcom/miui/maml/elements/AttrDataBinders$1;
.super Ljava/lang/Object;
.source "AttrDataBinders.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/AttrDataBinders;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/ContextVariables;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/AttrDataBinders;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/AttrDataBinders;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$1;->this$0:Lcom/miui/maml/elements/AttrDataBinders;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
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
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$1;->this$0:Lcom/miui/maml/elements/AttrDataBinders;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/AttrDataBinders;->access$000(Lcom/miui/maml/elements/AttrDataBinders;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/miui/maml/elements/AttrDataBinders$1;->this$0:Lcom/miui/maml/elements/AttrDataBinders;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/miui/maml/elements/AttrDataBinders;->mVars:Lcom/miui/maml/data/ContextVariables;

    .line 12
    .line 13
    invoke-direct {v1, p1, v2}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/ContextVariables;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "AttrDataBinders"

    .line 26
    .line 27
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
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
