.class public final synthetic Lcom/miui/maml/elements/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/maml/elements/WebViewScreenElement;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/a;->a:Lcom/miui/maml/elements/WebViewScreenElement;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/a;->a:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->a(Lcom/miui/maml/elements/WebViewScreenElement;)V

    return-void
.end method
