.class Lcom/miui/maml/elements/ListScreenElement$ListData$1;
.super Ljava/lang/Object;
.source "ListScreenElement.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/ListScreenElement$ListData;->load(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/ListScreenElement$ListData;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/ListScreenElement$ListData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ListData$1;->this$0:Lcom/miui/maml/elements/ListScreenElement$ListData;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$ListData$1;->this$0:Lcom/miui/maml/elements/ListScreenElement$ListData;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mColumns:Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v2, Lcom/miui/maml/elements/ListScreenElement$Column;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 10
    .line 11
    invoke-direct {v2, p1, v3, v0}, Lcom/miui/maml/elements/ListScreenElement$Column;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/elements/ListScreenElement;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
