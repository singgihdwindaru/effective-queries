declare @total int, @ord int

select @total = 0, @ord = -1

update #t set
    @total = @total + total,
    @ord = case when ord <> @ord + 1 then 1/0 else ord end,
    ------------------------
    running_total = @total

select * from #t

-- CPU 0, Reads 58, Duration 139