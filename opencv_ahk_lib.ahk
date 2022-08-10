by AHK中文社区 何许人

;char类型
OpencvAHK_char(char)
{
   Return asc(char)
}
;double类型
OpencvAHK_double(Number)
{
    NumPut(fps := Number, temp := 0, "double")
    Return fps := NumGet(temp, "double")
}
;布尔类型
OpencvAHK_bool(inputbool)
{
    ComObj(0XB,inputbool==ture?-1:0)
}
;const Point *const *
OpencvAHK_ConstPointConst(inputArray)
{
    pts := ComObjCreate("OpenCV.VectorOfpoint") 
    Loop,% inputArray.Length()
    {
        pts.push_back(ComArrayMake(inputArray[a_index]))
    }
    return pts
}
;Point类型
OpencvAHK_Point(inputArray)
{
    return ComArrayMake(inputArray) 
}
;Size类型（与piont类型都是一样的，只是为了写出的代码方便理解）
OpencvAHK_Size(inputArray)
{
    return ComArrayMake(inputArray) 
}
;构造返回数组
OpencvAHK_OutputArray()
{
    return frame := ComObjCreate("OpenCV.cv.MAT")
}
;颜色类型 Const Scalar &
OpencvAHK_ConstScalar(inputArray)
{
    return ComArrayMake(inputArray) 
}
ComArrayMake(inputArray) 
{
	arr := ComObjArray(VT_VARIANT:=12, inputArray.Length())
	Loop,% inputArray.Length()
	{
		arr[A_Index-1] := inputArray[A_Index]
	}
	return arr
}
