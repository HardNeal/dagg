# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin1 = User.create!(email: 'admin@m.r', phone_number: '0555555555', password: '123456', password_confirmation: '123456')

# admin2 = User.create!(email: 'helloworld@m.r', phone_number: '0777777777', password: '123456', password_confirmation: '123456')

tracker = User.first.trackers.new(imei_code: '990000862471853', phone: '0555555555')
tracker.save

 # Point.create!( longtitude: 74.477556000000, latitude: 43.061306000000, tracker_id: 1 )


Point.create!( latitude:  42.872103,  longtitude: 74.6115124, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8743916,	longtitude: 74.6115768, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8756260,	longtitude: 74.6115822, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8757282,	longtitude: 74.6131325, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8754609,	longtitude: 74.6153212, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8754609,	longtitude: 74.6173382, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8769705,	longtitude: 74.6171236, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8780240,	longtitude: 74.6172309, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8821908,	longtitude: 74.6180677, message: 'low battery',  tracker_id: 1)
Point.create!( latitude: 42.8822223,	longtitude: 74.6187115, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8822065,	longtitude: 74.6197844, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8822537,	longtitude: 74.6210504, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8822380,	longtitude: 74.6218443, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8822380,	longtitude: 74.6225953, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8823323,	longtitude: 74.6229386, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8830399,	longtitude: 74.6229172, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8835587,	longtitude: 74.6228743, message: 'low battery', tracker_id: 1)
Point.create!( latitude:  42.883983,  longtitude: 74.6228313, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8846279,	longtitude: 74.6227884, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8850524,	longtitude: 74.6226811, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8855555,	longtitude: 74.6226382, message: 'low battery', tracker_id: 1)
Point.create!( latitude: 42.8856026,	longtitude: 74.6218657, message: 'low battery', tracker_id: 1)
# Point.create!( latitude: 42.8853825,	longtitude: 74.6203637, tracker_id: 1)
# Point.create!( latitude: 42.8852253,	longtitude: 74.6195912, tracker_id: 1)
# Point.create!( latitude: 42.8850366,	longtitude: 74.6186900, tracker_id: 1)
# Point.create!( latitude: 42.8850366,	longtitude: 74.6171880, tracker_id: 1)
# Point.create!( latitude: 42.8849738,	longtitude: 74.6158147, tracker_id: 1)
# Point.create!( latitude: 42.8849580,	longtitude: 74.6150422, tracker_id: 1)
# Point.create!( latitude: 42.8846750,	longtitude: 74.6151066, tracker_id: 1)
# Point.create!( latitude: 42.8842662,	longtitude: 74.6151280, tracker_id: 1)
# Point.create!( latitude: 42.8837946,	longtitude: 74.6151710, tracker_id: 1)
# Point.create!( latitude: 42.8832914,	longtitude: 74.6151710, tracker_id: 1)
# Point.create!( latitude: 42.8828512,	longtitude: 74.6152568, tracker_id: 1)
# Point.create!( latitude: 42.8822065,	longtitude: 74.6151495, tracker_id: 1)
# Point.create!( latitude: 42.8821751,	longtitude: 74.6145916, tracker_id: 1)
# Point.create!( latitude: 42.8821436,	longtitude: 74.6133900, tracker_id: 1)
# Point.create!( latitude: 42.8821122,	longtitude: 74.6123171, tracker_id: 1)
# Point.create!( latitude: 42.8820965,	longtitude: 74.6115875, tracker_id: 1)
# Point.create!( latitude: 42.8820807,	longtitude: 74.6107721, tracker_id: 1)
# Point.create!( latitude: 42.8819864,	longtitude: 74.6100211, tracker_id: 1)
# Point.create!( latitude: 42.8819550,	longtitude: 74.6092272, tracker_id: 1)
# Point.create!( latitude: 42.8819550,	longtitude: 74.6084547, tracker_id: 1)
# Point.create!( latitude: 42.8818449,	longtitude: 74.6078110, tracker_id: 1)
# Point.create!( latitude: 42.8819235,	longtitude: 74.6074462, tracker_id: 1)
# Point.create!( latitude: 42.8823480,	longtitude: 74.6073818, tracker_id: 1)
# Point.create!( latitude: 42.8830241,	longtitude: 74.6075320, tracker_id: 1)
# Point.create!( latitude: 42.8835430,	longtitude: 74.6074247, tracker_id: 1)
# Point.create!( latitude: 42.8840147,	longtitude: 74.6076393, tracker_id: 1)
# Point.create!( latitude: 42.8843448,	longtitude: 74.6076822, tracker_id: 1)
# Point.create!( latitude: 42.8844706,	longtitude: 74.6084547, tracker_id: 1)
# Point.create!( latitude: 42.8845335,	longtitude: 74.6092057, tracker_id: 1)
# Point.create!( latitude: 42.8844864,	longtitude: 74.6098924, tracker_id: 1)
# Point.create!( latitude: 42.8846121,	longtitude: 74.6107721, tracker_id: 1)
# Point.create!( latitude: 42.8845964,	longtitude: 74.6115661, tracker_id: 1)
# Point.create!( latitude: 42.8847222,	longtitude: 74.6118236, tracker_id: 1)
# Point.create!( latitude: 42.8855083,	longtitude: 74.6117806, tracker_id: 1)
# Point.create!( latitude: 42.8861372,	longtitude: 74.6117806, tracker_id: 1)
# Point.create!( latitude: 42.8864045,	longtitude: 74.6116734, tracker_id: 1)
# Point.create!( latitude: 42.8864045,	longtitude: 74.6121240, tracker_id: 1)
# Point.create!( latitude: 42.8864674,	longtitude: 74.6131539, tracker_id: 1)
# Point.create!( latitude: 42.8863730,	longtitude: 74.6138835, tracker_id: 1)
# Point.create!( latitude: 42.8863730,	longtitude: 74.6147203, tracker_id: 1)
# Point.create!( latitude: 42.8863573,	longtitude: 74.6152139, tracker_id: 1)
# Point.create!( latitude: 42.8869233,	longtitude: 74.6152139, tracker_id: 1)
# Point.create!( latitude: 42.8875836,	longtitude: 74.6152782, tracker_id: 1)
# Point.create!( latitude: 42.8879452,	longtitude: 74.6152997, tracker_id: 1)
# Point.create!( latitude: 42.8882597,	longtitude: 74.6152997, tracker_id: 1)
# Point.create!( latitude: 42.8887313,	longtitude: 74.6152568, tracker_id: 1)
# Point.create!( latitude: 42.8892187,	longtitude: 74.6152997, tracker_id: 1)
# Point.create!( latitude: 42.8897375,	longtitude: 74.6153426, tracker_id: 1)
# Point.create!( latitude: 42.8899733,	longtitude: 74.6153426, tracker_id: 1)
# Point.create!( latitude: 42.8900205,	longtitude: 74.6146560, tracker_id: 1)
# Point.create!( latitude: 42.8899261,	longtitude: 74.6132398, tracker_id: 1)
# Point.create!( latitude: 42.8898947,	longtitude: 74.6125746, tracker_id: 1)
# Point.create!( latitude: 42.8897689,	longtitude: 74.6117592, tracker_id: 1)
# Point.create!( latitude: 42.8897532,	longtitude: 74.6109009, tracker_id: 1)
# Point.create!( latitude: 42.8896903,	longtitude: 74.6096134, tracker_id: 1)
# Point.create!( latitude: 42.8901305,	longtitude: 74.6095061, tracker_id: 1)
# Point.create!( latitude: 42.8906179,	longtitude: 74.6094203, tracker_id: 1)
# Point.create!( latitude: 42.8911995,	longtitude: 74.6094203, tracker_id: 1)
# Point.create!( latitude: 42.8916712,	longtitude: 74.6092916, tracker_id: 1)
# Point.create!( latitude: 42.8920642,	longtitude: 74.6094632, tracker_id: 1)
# Point.create!( latitude: 42.8924572,	longtitude: 74.6094418, tracker_id: 1)
# Point.create!( latitude: 42.8928659,	longtitude: 74.6093345, tracker_id: 1)
# Point.create!( latitude: 42.8928659,	longtitude: 74.6080899, tracker_id: 1)
# Point.create!( latitude: 42.8927716,	longtitude: 74.6070600, tracker_id: 1)
# Point.create!( latitude: 42.8927402,	longtitude: 74.6059871, tracker_id: 1)
# Point.create!( latitude: 42.8934633,	longtitude: 74.6060514, tracker_id: 1)
# Point.create!( latitude: 42.8939506,	longtitude: 74.6060085, tracker_id: 1)
# Point.create!( latitude: 42.8944694,	longtitude: 74.6060085, tracker_id: 1)
# Point.create!( latitude: 42.8949410,	longtitude: 74.6059656, tracker_id: 1)
# Point.create!( latitude: 42.8953654,	longtitude: 74.6059656, tracker_id: 1)
# Point.create!( latitude: 42.8958528,	longtitude: 74.6059442, tracker_id: 1)
# Point.create!( latitude: 42.8963086,	longtitude: 74.6058369, tracker_id: 1)
# Point.create!( latitude: 42.8967802,	longtitude: 74.6058369, tracker_id: 1)
# Point.create!( latitude: 42.8968745,	longtitude: 74.6060944, tracker_id: 1)
# Point.create!( latitude: 42.8965601,	longtitude: 74.6077681, tracker_id: 1)
# Point.create!( latitude: 42.8962772,	longtitude: 74.6087980, tracker_id: 1)
# Point.create!( latitude: 42.8960257,	longtitude: 74.6097636, tracker_id: 1)
# Point.create!( latitude: 42.8958999,	longtitude: 74.6106648, tracker_id: 1)
# Point.create!( latitude: 42.8957899,	longtitude: 74.6114802, tracker_id: 1)
# Point.create!( latitude: 42.8962457,	longtitude: 74.6115232, tracker_id: 1)
# Point.create!( latitude: 42.8965601,	longtitude: 74.6115661, tracker_id: 1)
# Point.create!( latitude: 42.8970317,	longtitude: 74.6116090, tracker_id: 1)
# Point.create!( latitude:  42.897487, longtitude: 	74.6117377, tracker_id: 1)
# Point.create!( latitude:  42.897739, longtitude: 	74.6117377, tracker_id: 1)