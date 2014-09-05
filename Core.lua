namespace "trit"{
	namespace "model"{
		namespace "trp30_1"{
			class "Core"{
				metamethod"_init"
				:body(function(self)
					self.matA = trit.math.linear_algebra.matrix:new(3);
					self.matB = trit.math.linear_algebra.matrix:new(3);
					self.matC = trit.math.linear_algebra.matrix:new(3);

					self.vecA = trit.math.linear_algebra.matrix:new({1,3});
					self.vecB = trit.math.linear_algebra.matrix:new({1,3});
				end);

				metamethod"__call"
				:body(function(self)
-- 					self.matA.mtx = {
-- 						{1,0,0},
-- 						{0,1,0},
-- 						{0,0,1}
-- 					}
-- 					self.matB.mtx = {
-- 						{1,0,0},
-- 						{0,2,0},
-- 						{0,0,1}
-- 					}
					self.matC = self.matA+ self.vecB
					self.matC:out(0)

				end);
			}
		}--trp30_1
	}--model
}--trit
