-- إضافة حقل المنطقة لبيانات العميل دون تعديل أو حذف أي بيانات حالية.
-- آمن لإعادة التشغيل: IF NOT EXISTS يمنع تكرار إنشاء العمود.
alter table public.clients
  add column if not exists region text;

comment on column public.clients.region is 'منطقة العميل كما تظهر في بيانات العميل وجدول الإجمالي';
