.class public final synthetic Lcom/miui/calendar/card/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/b$a;

.field public final synthetic b:Lcom/miui/calendar/card/Card;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/b$a;Lcom/miui/calendar/card/Card;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/a;->a:Lcom/miui/calendar/card/b$a;

    iput-object p2, p0, Lcom/miui/calendar/card/a;->b:Lcom/miui/calendar/card/Card;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/card/a;->a:Lcom/miui/calendar/card/b$a;

    iget-object v1, p0, Lcom/miui/calendar/card/a;->b:Lcom/miui/calendar/card/Card;

    invoke-static {v0, v1}, Lcom/miui/calendar/card/b$a;->a(Lcom/miui/calendar/card/b$a;Lcom/miui/calendar/card/Card;)V

    return-void
.end method
