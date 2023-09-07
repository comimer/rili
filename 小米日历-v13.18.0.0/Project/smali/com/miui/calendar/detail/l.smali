.class public final synthetic Lcom/miui/calendar/detail/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/detail/SubscribeGroupActivity$d;

.field public final synthetic b:Lcom/miui/calendar/card/schema/CustomCardSchema;

.field public final synthetic c:Lcom/miui/calendar/detail/SubscribeGroupActivity$e;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/detail/SubscribeGroupActivity$d;Lcom/miui/calendar/card/schema/CustomCardSchema;Lcom/miui/calendar/detail/SubscribeGroupActivity$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/detail/l;->a:Lcom/miui/calendar/detail/SubscribeGroupActivity$d;

    iput-object p2, p0, Lcom/miui/calendar/detail/l;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    iput-object p3, p0, Lcom/miui/calendar/detail/l;->c:Lcom/miui/calendar/detail/SubscribeGroupActivity$e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/calendar/detail/l;->a:Lcom/miui/calendar/detail/SubscribeGroupActivity$d;

    iget-object v1, p0, Lcom/miui/calendar/detail/l;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    iget-object v2, p0, Lcom/miui/calendar/detail/l;->c:Lcom/miui/calendar/detail/SubscribeGroupActivity$e;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/calendar/detail/SubscribeGroupActivity$d;->g(Lcom/miui/calendar/detail/SubscribeGroupActivity$d;Lcom/miui/calendar/card/schema/CustomCardSchema;Lcom/miui/calendar/detail/SubscribeGroupActivity$e;Landroid/view/View;)V

    return-void
.end method
