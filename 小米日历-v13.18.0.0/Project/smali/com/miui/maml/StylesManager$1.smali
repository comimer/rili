.class Lcom/miui/maml/StylesManager$1;
.super Ljava/lang/Object;
.source "StylesManager.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/StylesManager;-><init>(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/StylesManager;


# direct methods
.method constructor <init>(Lcom/miui/maml/StylesManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/StylesManager$1;->this$0:Lcom/miui/maml/StylesManager;

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
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/maml/StylesManager$Style;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/miui/maml/StylesManager$1;->this$0:Lcom/miui/maml/StylesManager;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/miui/maml/StylesManager$Style;-><init>(Lcom/miui/maml/StylesManager;Lorg/w3c/dom/Element;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/miui/maml/StylesManager$1;->this$0:Lcom/miui/maml/StylesManager;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/miui/maml/StylesManager;->access$000(Lcom/miui/maml/StylesManager;)Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v1, v0, Lcom/miui/maml/StylesManager$Style;->name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void
    .line 20
    .line 21
    .line 22
.end method
