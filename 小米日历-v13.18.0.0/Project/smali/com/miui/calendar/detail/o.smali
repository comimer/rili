.class public final synthetic Lcom/miui/calendar/detail/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/detail/UpdateUserCardService;

.field public final synthetic b:Lcom/miui/calendar/account/mi/MiAccountSchema;

.field public final synthetic c:J

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/detail/UpdateUserCardService;Lcom/miui/calendar/account/mi/MiAccountSchema;JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/detail/o;->a:Lcom/miui/calendar/detail/UpdateUserCardService;

    iput-object p2, p0, Lcom/miui/calendar/detail/o;->b:Lcom/miui/calendar/account/mi/MiAccountSchema;

    iput-wide p3, p0, Lcom/miui/calendar/detail/o;->c:J

    iput p5, p0, Lcom/miui/calendar/detail/o;->d:I

    iput-object p6, p0, Lcom/miui/calendar/detail/o;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/calendar/detail/o;->a:Lcom/miui/calendar/detail/UpdateUserCardService;

    iget-object v1, p0, Lcom/miui/calendar/detail/o;->b:Lcom/miui/calendar/account/mi/MiAccountSchema;

    iget-wide v2, p0, Lcom/miui/calendar/detail/o;->c:J

    iget v4, p0, Lcom/miui/calendar/detail/o;->d:I

    iget-object v5, p0, Lcom/miui/calendar/detail/o;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/miui/calendar/detail/UpdateUserCardService;->a(Lcom/miui/calendar/detail/UpdateUserCardService;Lcom/miui/calendar/account/mi/MiAccountSchema;JILjava/lang/String;)V

    return-void
.end method
